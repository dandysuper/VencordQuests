#!/bin/bash
set -e

echo "=== Environment Debug ==="
echo "REPO_URL=${REPO_URL}"
echo "ACCESS_TOKEN length=${#ACCESS_TOKEN}"
echo "RUNNER_NAME=${RUNNER_NAME}"
echo "========================="

REPO_URL="${REPO_URL}"
ACCESS_TOKEN="${ACCESS_TOKEN}"
RUNNER_NAME="${RUNNER_NAME:-railway-runner}"
RUNNER_WORKDIR="${RUNNER_WORKDIR:-/tmp/runner/work}"
LABELS="${LABELS:-self-hosted}"

if [[ -z "$REPO_URL" ]] || [[ -z "$ACCESS_TOKEN" ]]; then
  echo "ERROR: REPO_URL and ACCESS_TOKEN are required"
  echo "Available env vars:"
  env | grep -v "TOKEN\|SECRET" | sort
  exit 1
fi

echo "Getting runner registration token..."
REG_TOKEN=$(curl -s -X POST \
  -H "Authorization: token ${ACCESS_TOKEN}" \
  -H "Accept: application/vnd.github+json" \
  "${REPO_URL/github.com/api.github.com/repos}/actions/runners/registration-token" \
  | jq -r '.token')

if [[ -z "$REG_TOKEN" ]] || [[ "$REG_TOKEN" == "null" ]]; then
  echo "ERROR: Failed to get registration token"
  exit 1
fi

echo "Configuring runner..."
./config.sh \
  --url "$REPO_URL" \
  --token "$REG_TOKEN" \
  --name "$RUNNER_NAME" \
  --work "$RUNNER_WORKDIR" \
  --labels "$LABELS" \
  --unattended \
  --replace

echo "Starting runner..."
./run.sh

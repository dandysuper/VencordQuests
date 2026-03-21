FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    git \
    jq \
    tar \
    sudo \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 20 from NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install pnpm via corepack (creates shim at /usr/local/bin/pnpm)
RUN corepack enable && corepack prepare pnpm@latest --activate

# Constrain Node.js heap for low-memory Railway instances
ENV NODE_OPTIONS="--max-old-space-size=1536"

# Use a fixed pnpm store location that persists between build and runtime
ENV PNPM_STORE_DIR="/opt/pnpm-store"
RUN mkdir -p /opt/pnpm-store

# Pre-warm pnpm store with Vencord dependencies at build time (more memory
# available during Docker build than at runtime). This way, CI `pnpm install`
# only hard-links from the store instead of downloading 580 packages.
RUN cd /tmp && git clone --depth 1 https://github.com/Vendicated/Vencord.git vencord-cache \
    && cd vencord-cache \
    && pnpm install --frozen-lockfile --network-concurrency 1 --store-dir /opt/pnpm-store \
    && rm -rf /tmp/vencord-cache

# Create runner user
RUN useradd -m runner && echo "runner ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Give runner user access to the pnpm store
RUN chown -R runner:runner /opt/pnpm-store

WORKDIR /home/runner

# Download latest GitHub Actions runner
RUN RUNNER_VERSION=$(curl -s https://api.github.com/repos/actions/runner/releases/latest | jq -r '.tag_name' | sed 's/v//') \
    && curl -fsSL "https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz" \
       -o runner.tar.gz \
    && tar xzf runner.tar.gz \
    && rm runner.tar.gz \
    && ./bin/installdependencies.sh

RUN chown -R runner:runner /home/runner

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER runner

ENTRYPOINT ["/entrypoint.sh"]

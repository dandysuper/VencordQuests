# VencordQuests

> A Vencord fork with the **CompleteDiscordQuest** plugin built in.  
> Automatically syncs with upstream [Vendicated/Vencord](https://github.com/Vendicated/Vencord) daily while preserving the quest plugin.

![](https://img.shields.io/github/package-json/v/Vendicated/Vencord?style=for-the-badge&logo=github&logoColor=d3869b&label=&color=1d2021&labelColor=282828)
[![Codeberg Mirror](https://img.shields.io/static/v1?style=for-the-badge&label=Codeberg%20Mirror&message=codeberg.org/Vee/cord&color=2185D0&logo=data:image/png;base64,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)](https://codeberg.org/Vee/cord)

The cutest Discord client mod

![](https://github.com/user-attachments/assets/3fac98c0-c411-4d2a-97a3-13b7da8687a2)

## CompleteDiscordQuest Plugin

This fork includes the **CompleteDiscordQuest** plugin ([original by nicola02nb](https://github.com/nicola02nb/completeDiscordQuest)), which automatically completes Discord quests in the background.

### Quest Plugin Features

- **Auto-enroll** — Automatically accepts available quests
- **Auto-complete** — Farms multiple quests simultaneously in the background
- **Supported quest types:**
  - Watch Video / Watch Video on Mobile
  - Play on Desktop (spoofs a running game)
  - Stream on Desktop (spoofs a streaming app)
  - Play Activity (sends heartbeat requests)
- **Supported reward types:** Reward Codes, In-Game, Collectibles, Virtual Currency, Fractional Premium
- **Quest button** in the top bar and/or settings bar with color-coded badge counts (enrollable/enrolled/claimable/claimed)
- All quest types and reward types are individually toggleable in plugin settings

### Plugin Settings

| Setting | Default | Description |
|---------|---------|-------------|
| Accept Quests Automatically | `true` | Auto-accept available quests |
| Show Quests Button (Top Bar) | `true` | Quest button in the top bar |
| Show Quests Button (Settings Bar) | `false` | Quest button in the settings panel |
| Show Quests Button Badges | `true` | Badge counts on quest buttons |
| Farm Videos | `true` | Auto-complete video quests |
| Farm Play on Desktop | `true` | Auto-complete play quests |
| Farm Stream on Desktop | `true` | Auto-complete stream quests |
| Farm Play Activity | `true` | Auto-complete activity quests |
| Farm Reward Codes | `true` | Farm quests with code rewards |
| Farm In-Game | `true` | Farm quests with in-game rewards |
| Farm Collectibles | `true` | Farm quests with collectible rewards |
| Farm Virtual Currency | `true` | Farm quests with virtual currency rewards |
| Farm Fractional Premium | `true` | Farm quests with premium rewards |

### Upstream Sync

This fork automatically syncs with [Vendicated/Vencord](https://github.com/Vendicated/Vencord) **daily** via GitHub Actions. The sync merges upstream changes while preserving the quest plugin files. If a merge conflict occurs, a pull request is created for manual resolution.

---

## 🛠️ How to Build & Inject VencordQuests

This guide walks you through cloning this fork, building it from source, and injecting it into your Discord desktop app — so you get the **CompleteDiscordQuest** plugin working.

---

### Prerequisites

Make sure you have the following installed before you start:

| Tool | Version | Download |
|------|---------|----------|
| **Node.js** | ≥ 18 | https://nodejs.org |
| **pnpm** | ≥ 9 | `npm install -g pnpm` |
| **Git** | any | https://git-scm.com |
| **Discord Desktop** | any branch (Stable / Canary / PTB) | https://discord.com/download |

> **Windows users:** Use PowerShell or Git Bash. Make sure Node.js is in your PATH.  
> **macOS users:** You may need to allow the installer through Gatekeeper (see Step 4).  
> **Linux users:** Make sure Discord is installed as a `.deb`, `.tar.gz`, or via your package manager — **not** as a Flatpak/Snap, which are unsupported.

---

### Step 1 — Clone this repository

```bash
git clone https://github.com/dandysuper/VencordQuests.git
cd VencordQuests
```

---

### Step 2 — Install dependencies

```bash
pnpm install --frozen-lockfile
```

This installs all required packages. The `--frozen-lockfile` flag ensures you use the exact same dependency versions used by this project.

---

### Step 3 — Build the project

```bash
pnpm build
```

This compiles the TypeScript source and bundles everything into the `dist/` folder using esbuild. You should see output like:

```
[BUILD] dist/browser.js
[BUILD] dist/patcher.js
[BUILD] dist/preload.js
[BUILD] dist/renderer.js
```

> **Optional — build for browser extension / UserScript:**
> ```bash
> pnpm buildWeb
> ```
> This produces the browser extension artifacts in `dist/` as well.

---

### Step 4 — Inject into Discord

Injecting patches VencordQuests into your Discord installation so it loads on startup.

```bash
pnpm inject
```

The script downloads the official Vencord Installer binary and runs it pointing at your locally-built `dist/` folder.

**What happens platform by platform:**

#### 🪟 Windows
- The installer opens a GUI window.
- Select your Discord installation (Stable / Canary / PTB).
- Click **Install**.

#### 🍎 macOS
- The installer binary is downloaded and unzipped automatically.
- If macOS blocks it with *"cannot be opened because the developer cannot be verified"*, run:
  ```bash
  xattr -cr /tmp/VencordInstaller
  ```
  Then re-run `pnpm inject`.
- The installer GUI will open — select your Discord and click **Install**.

#### 🐧 Linux
- The installer runs in your terminal.
- Follow the prompts to select your Discord installation path.
- If Discord is installed in a custom location, you can pass it explicitly:
  ```bash
  node scripts/runInstaller.mjs -- --install --location /path/to/discord
  ```

---

### Step 5 — Restart Discord

Fully quit Discord (not just close the window — use the system tray icon → **Quit Discord**), then reopen it.

VencordQuests is now injected! You should see the Vencord settings gear icon in the bottom-left of Discord.

---

### Step 6 — Enable the CompleteDiscordQuest Plugin

1. Open Discord.
2. Click the **⚙️ User Settings** gear icon (bottom-left, next to your username).
3. In the left sidebar, scroll down and click **Vencord** → **Plugins**.
4. Use the search bar to search for **`CompleteDiscordQuest`**.
5. Toggle the plugin **ON** (the switch turns green/blue).
6. A dialog may appear asking you to **Restart** Discord — click it.

That's it! The plugin is now active and will automatically accept and farm quests in the background.

---

### Step 7 — Configure Plugin Settings (Optional)

After enabling the plugin, click the **⚙️ cog icon** next to it to open its settings:

| Setting | Default | What it does |
|---------|---------|--------------|
| Accept Quests Automatically | ✅ On | Auto-accepts any available quest |
| Show Quests Button (Top Bar) | ✅ On | Adds a quest button to the Discord top bar |
| Show Quests Button (Settings Bar) | ❌ Off | Adds a quest button inside Vencord settings |
| Show Quests Button Badges | ✅ On | Shows colored badge counts on the button |
| Farm Videos | ✅ On | Auto-completes Watch Video quests |
| Farm Play on Desktop | ✅ On | Spoofs a running game to complete Play quests |
| Farm Stream on Desktop | ✅ On | Spoofs a stream to complete Stream quests |
| Farm Play Activity | ✅ On | Sends heartbeats to complete Activity quests |
| Farm Reward Codes | ✅ On | Farms quests that give reward codes |
| Farm In-Game | ✅ On | Farms quests with in-game item rewards |
| Farm Collectibles | ✅ On | Farms quests with collectible rewards |
| Farm Virtual Currency | ✅ On | Farms quests with virtual currency rewards |
| Farm Fractional Premium | ✅ On | Farms quests with fractional Nitro rewards |

You can toggle each one individually based on which quest types and reward types you want.

---

### Updating VencordQuests

This fork auto-syncs with upstream Vencord **daily**. To pull the latest changes and rebuild:

```bash
git pull
pnpm install --frozen-lockfile
pnpm build
pnpm inject
```

Then restart Discord.

---

### Uninstalling / Removing the Injection

To remove VencordQuests from Discord and restore it to normal:

```bash
pnpm uninject
```

Then restart Discord. This does **not** delete your VencordQuests folder — only the Discord injection is removed.

---

### Troubleshooting

**Discord doesn't load / shows a blank screen after injection**
- Make sure you ran `pnpm build` successfully before `pnpm inject`.
- Check that the `dist/` folder exists and contains `.js` files.
- Try uninjecting (`pnpm uninject`), rebuilding, then re-injecting.

**"Cannot find module" or build errors**
- Delete `node_modules/` and re-run `pnpm install --frozen-lockfile`.
- Make sure your Node.js version is ≥ 18: `node --version`.

**CompleteDiscordQuest plugin not visible in the plugin list**
- Make sure you built from *this* fork, not the upstream Vencord.
- Search for "Quest" in the Vencord plugins search bar.

**macOS: Installer blocked by Gatekeeper**
```bash
xattr -cr /tmp/VencordInstaller
pnpm inject
```

**Linux: Discord is a Flatpak/Snap**
- Flatpak and Snap Discord installations are **not supported** for injection.
- Install Discord from https://discord.com/download (`.deb` or `.tar.gz`) instead.

---

## Vencord Features

-   Easy to install
-   [100+ built in plugins](https://vencord.dev/plugins)
-   Fairly lightweight despite the many inbuilt plugins
-   Excellent Browser Support: Run Vencord in your Browser via extension or UserScript
-   Works on any Discord branch: Stable, Canary or PTB all work
-   Custom CSS and Themes: Inbuilt css editor with support to import any css files (including BetterDiscord themes)
-   Privacy friendly: blocks Discord analytics & crash reporting out of the box and has no telemetry
-   Maintained very actively, broken plugins are usually fixed within 12 hours
-   Settings sync: Keep your plugins and their settings synchronised between devices / apps (optional)


## Installing / Uninstalling

Visit https://vencord.dev/download

## Join our Support/Community Server

https://discord.gg/D9uwnFnqmd

## Sponsors

|     **Thanks a lot to all Vencord [sponsors](https://github.com/sponsors/Vendicated)!!**     |
| :------------------------------------------------------------------------------------------: |
|   [![](https://meow.vendicated.dev/sponsors.png)](https://github.com/sponsors/Vendicated)    |
| *generated using [github-sponsor-graph](https://github.com/Vendicated/github-sponsor-graph)* |


## Star History

<a href="https://star-history.com/#Vendicated/Vencord&Timeline">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=Vendicated/Vencord&type=Timeline&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=Vendicated/Vencord&type=Timeline" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=Vendicated/Vencord&type=Timeline" />
  </picture>
</a>

## Disclaimer

Discord is trademark of Discord Inc. and solely mentioned for the sake of descriptivity.
Mention of it does not imply any affiliation with or endorsement by Discord Inc.

<details>
<summary>Using Vencord violates Discord's terms of service</summary>

Client modifications are against Discord’s Terms of Service.

However, Discord is pretty indifferent about them and there are no known cases of users getting banned for using client mods! So you should generally be fine as long as you don’t use any plugins that implement abusive behaviour. But no worries, all inbuilt plugins are safe to use!

Regardless, if your account is very important to you and it getting disabled would be a disaster for you, you should probably not use any client mods (not exclusive to Vencord), just to be safe

Additionally, make sure not to post screenshots with Vencord in a server where you might get banned for it

</details>

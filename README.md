# Homebrew tap

Prebuilt, signed and notarized macOS builds of **Agent Orchestrator** — a local
Kanban board that runs CLI coding agents (Claude Code, OpenCode, GitHub Copilot
CLI, Oh My Pi) in isolated git worktrees.

## Install

```sh
brew install --cask renickbuettner/tap/agent-orchestrator
```

## Update / remove

```sh
brew upgrade --cask agent-orchestrator
brew uninstall --cask agent-orchestrator          # keeps your data
brew uninstall --zap --cask agent-orchestrator    # also deletes data + login item
```

- Requires Apple Silicon and macOS 12+, plus at least one agent CLI logged in on your `PATH`.
- Data lives in `~/Library/Application Support/io.renick.agent-orchestrator/` and survives updates.
- This repository only hosts release binaries and the cask; the source code is private.

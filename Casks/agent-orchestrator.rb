cask "agent-orchestrator" do
  version "0.1.1"
  sha256 "bc7113e35eb83065c2b934fa5eb92ebd4560b86d4a8c8004cf0c48619a81720b"

  url "https://github.com/renickbuettner/homebrew-tap/releases/download/v#{version}/Agent-Orchestrator-#{version}-aarch64.pkg"
  name "Agent Orchestrator"
  desc "Local Kanban board that runs CLI coding agents in isolated git worktrees"
  homepage "https://github.com/renickbuettner/homebrew-tap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  pkg "Agent-Orchestrator-#{version}-aarch64.pkg"

  # A pkg cask only forgets the receipt on uninstall: the app must be deleted explicitly.
  uninstall launchctl: "Agent Orchestrator",
            quit:      "io.renick.agent-orchestrator",
            pkgutil:   "io.renick.agent-orchestrator.pkg",
            delete:    [
              "/Applications/Agent Orchestrator.app",
              "~/Library/LaunchAgents/Agent Orchestrator.plist",
            ]

  zap trash: [
    "~/Library/Application Support/io.renick.agent-orchestrator",
    "~/Library/Caches/io.renick.agent-orchestrator",
    "~/Library/HTTPStorages/io.renick.agent-orchestrator",
    "~/Library/Preferences/io.renick.agent-orchestrator.plist",
    "~/Library/Saved Application State/io.renick.agent-orchestrator.savedState",
    "~/Library/WebKit/io.renick.agent-orchestrator",
  ]
end

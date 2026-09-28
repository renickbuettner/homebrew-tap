cask "agent-orchestrator" do
  version "0.1.0"
  sha256 "a44f799d4e10d4c9c6268cc327cb818ebc749f42d7a28943e3b01641666e2fee"

  url "https://github.com/renickbuettner/homebrew-tap/releases/download/v#{version}/Agent-Orchestrator-#{version}-aarch64.dmg"
  name "Agent Orchestrator"
  desc "Local Kanban board that runs CLI coding agents in isolated git worktrees"
  homepage "https://github.com/renickbuettner/homebrew-tap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Agent Orchestrator.app"

  uninstall quit: "io.renick.agent-orchestrator"

  zap trash: [
    "~/Library/Application Support/io.renick.agent-orchestrator",
    "~/Library/LaunchAgents/Agent Orchestrator.plist",
  ]
end

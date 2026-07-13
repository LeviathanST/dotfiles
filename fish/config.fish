
# ENV
fish_add_path -aP ~/.local/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    # Import
    source $HOME/.config/fish/alias.fish
    source $HOME/.config/fish/fzf-key-binding.fish
    starship init fish | source
end

function fish_greeting 
end

# =============================================================================
#
# zoxide — smarter cd tool
#
zoxide init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH 


# ZVM
set -gx ZVM_INSTALL "$HOME/.local/share/zvm/self"
set -gx PATH $PATH "$HOME/.local/share/zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"

# Baro
set -x PATH $PATH "$HOME/workspaces/zig/baro/zig-out/bin"
set -x PATH $PATH "$HOME/.local/share/baro/bin"

set -x PATH $PATH "$HOME/workspaces/zig/poop/zig-out/bin"
set -x PATH $PATH "$HOME/workspaces/zig/zine/zig-out/bin"
set -x PATH $PATH "$HOME/workspaces/zig/zlint/zig-out/bin"
set -x PATH $PATH "$HOME/workspaces/tools/ccsm/target/release"
set -x PATH $PATH "/home/leviathanst/workspaces/tools/aseprite/aseprite-release/bin"

set -gx DISABLE_AUTOUPDATER 1
set -gx ANTHROPIC_BASE_URL https://api.deepseek.com/anthropic
set -gx ANTHROPIC_AUTH_TOKEN sk-4372e6c141384f58adbc491cc7c44c07
set -gx ANTHROPIC_MODEL deepseek-v4-flash
set -gx ANTHROPIC_DEFAULT_OPUS_MODEL deepseek-v4-pro[1m]
set -gx ANTHROPIC_DEFAULT_SONNET_MODEL deepseek-v4-flash
set -gx ANTHROPIC_DEFAULT_HAIKU_MODEL deepseek-v4-flash
set -gx CLAUDE_CODE_SUBAGENT_MODEL deepseek-v4-flash
set -gx CLAUDE_CODE_EFFORT_LEVEL max

fish_add_path -aP ~/.cargo/bin
fish_add_path -aP "$HOME/workspaces/zig/nullclaw/zig-out/bin"

# Amp CLI
export PATH="/home/leviathanst/.amp/bin:$PATH"
set -x ENABLE_LSP_TOOL true
alias claude-godot="ENABLE_LSP_TOOL=true claude"

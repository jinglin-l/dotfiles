# ── Path ──────────────────────────────────────────────────────────────────────
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.local/bin
set -gx BUN_INSTALL $HOME/.bun
fish_add_path $BUN_INSTALL/bin
fish_add_path /opt/homebrew/opt/libpq/bin

# ── Tools ─────────────────────────────────────────────────────────────────────
# starship prompt
starship init fish | source

# ── History ───────────────────────────────────────────────────────────────────
# Fish handles history well out of the box (deduplication, sharing, 256k entries)

# ── Terminal ──────────────────────────────────────────────────────────────────
if status is-interactive
    fortune | cowsay -f (ls /opt/homebrew/Cellar/cowsay/3.8.4/share/cowsay/cows/ | shuf -n1) | lolcat
end

# ── Custom aliases & functions ────────────────────────────────────────────────
alias pip pip3

alias ghostty-config 'vim "$HOME/Library/Application Support/com.mitchellh.ghostty/config.ghostty"'

# ── Misc (commented out) ──────────────────────────────────────────────────────
# set -gx AWS_PROFILE acorns-staging
# set -gx CLAUDE_CODE_USE_BEDROCK 1

abbr -a save '/Users/jinglinli/code/save-read/venv/bin/python /Users/jinglinli/code/save-read/save-read.py'

fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.local/bin
set -gx BUN_INSTALL $HOME/.bun
fish_add_path $BUN_INSTALL/bin
fish_add_path /opt/homebrew/opt/libpq/bin

starship init fish | source

if status is-interactive
    fortune | cowsay -f (ls /opt/homebrew/Cellar/cowsay/3.8.4/share/cowsay/cows/ | shuf -n1) | lolcat
end

alias pip pip3
alias ghostty-config 'vim "$HOME/Library/Application Support/com.mitchellh.ghostty/config.ghostty"'

abbr -a save '/Users/jinglinli/code/save-read/venv/bin/python /Users/jinglinli/code/save-read/save-read.py'

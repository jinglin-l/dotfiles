function signalexport
    if test -z "$argv[1]"
        echo "Usage: signalexport <chat> [output_dir]"
        echo "  Chats: jmail"
        echo "  Default output: ~/obsidian/jmail"
        return 1
    end

    set -l chat $argv[1]
    set -l output (test -n "$argv[2]"; and echo $argv[2]; or echo $HOME/obsidian/signal/jmail)

    switch $chat
        case jmail
            set chat "Jmail - DOJ drop speed build"
    end

    command sigexport --overwrite --chats="$chat" $output
end

function killport
    set -l pid (lsof -ti :$argv[1])
    if test -z "$pid"
        echo "Nothing running on port $argv[1]"
    else
        kill -9 $pid; and echo "Killed process $pid on port $argv[1]"
    end
end

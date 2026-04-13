function rm --wraps rm
    set -l trash_dir ~/trash
    mkdir -p $trash_dir
    for item in $argv
        # skip flags
        if string match -q -- '-*' $item
            continue
        end
        set -l base (basename $item)
        # handle name collisions by appending timestamp
        if test -e "$trash_dir/$base"
            set base "$base."(date +%s)
        end
        command mv $item $trash_dir/$base
    end
end

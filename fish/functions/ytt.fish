function ytt
    yt-dlp --write-subs --write-auto-subs --sub-lang "en.*,eng.*" --skip-download --convert-subs srt -o "%(title)s" $argv[1]
    for f in *.srt
        sed '/^[0-9]*$/d; /-->/d; /^$/d' $f | awk '!seen[$0]++' | tee (string replace -r '\.srt$' '.txt' $f) | pbcopy
        rm $f
    end
end

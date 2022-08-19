zscroll -l 30 \
        --delay 0.2 \
        --scroll-padding " - " \
        --match-command "playerctl status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "playerctl metadata -f '{{ title }}'" &

wait

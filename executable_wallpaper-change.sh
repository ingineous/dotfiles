# Usage: `gs_replace_str "regex_search_pattern" "replacement_string" "file_path"`

# [^\s]*(home)[^\s]*

REGEX_SEARCH="[^\s]*(home)[^\s]*"
REPLACEMENT_STR="$1"

FILENAME="/home/dream/.config/hypr/hyprpaper.conf"

perl -pi -w -e "s|$REGEX_SEARCH|$REPLACEMENT_STR|" /home/$(whoami)/.config/hypr/hyprpaper.conf

hyprctl hyprpaper unload all

killall hyprpaper

hyprpaper

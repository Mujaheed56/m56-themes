#!/data/data/com.termux/files/usr/bin/bash

# preview themes before applying
# shows you what the theme looks like

THEME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/themes"

NC='\033[0m'

# show preview of a theme
preview_theme() {
    theme_name=$1
    theme_file="$THEME_DIR/${theme_name}.sh"
    
    if [ ! -f "$theme_file" ]; then
        echo "theme '$theme_name' not found"
        return 1
    fi
    
    clear
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Preview: $theme_name"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    
    # source the theme in a subshell so it dosent affect current session
    (
        source "$theme_file"
        
        # show the banner if it exists
        if type show_banner &>/dev/null; then
            show_banner
        fi
        
        # show sample prompt
        echo ""
        echo "Sample prompt:"
        echo ""
        eval "echo -e \"$PS1\" | sed 's/\\\\//g'"
        echo "ls -la"
        echo "git status"
        echo "neofetch"
    )
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "to apply this theme run: ./apply.sh $theme_name"
}

# show usage
if [ $# -eq 0 ]; then
    echo "usage: ./preview.sh <theme-name>"
    echo ""
    echo "available themes:"
    for theme in "$THEME_DIR"/*.sh; do
        name=$(basename "$theme" .sh)
        echo "  • $name"
    done
    exit 1
fi

preview_theme "$1"

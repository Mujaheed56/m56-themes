#!/data/data/com.termux/files/usr/bin/bash

# termux theme installer
# quick and easy theme switching

THEME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/themes"
TERMUX_DIR="$HOME/.termux"
BACKUP_DIR="$TERMUX_DIR/backup"

# colors for the installer itself
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# create termux folder if it dosent exist
mkdir -p "$TERMUX_DIR"
mkdir -p "$BACKUP_DIR"

# backup current theme if exists
backup_current() {
    if [ -f "$TERMUX_DIR/theme.sh" ]; then
        timestamp=$(date +%Y%m%d_%H%M%S)
        cp "$TERMUX_DIR/theme.sh" "$BACKUP_DIR/theme_$timestamp.sh"
        echo -e "${GREEN}✓${NC} backed up current theme"
    fi
}

# list all available themes
list_themes() {
    echo -e "${CYAN}📦 Available Themes:${NC}\n"
    for theme in "$THEME_DIR"/*.sh; do
        name=$(basename "$theme" .sh)
        echo -e "  ${PURPLE}•${NC} $name"
    done
    echo ""
}

# apply the chosen theme
apply_theme() {
    theme_name=$1
    theme_file="$THEME_DIR/${theme_name}.sh"
    
    if [ ! -f "$theme_file" ]; then
        echo -e "${RED}✗${NC} theme '$theme_name' not found"
        return 1
    fi
    
    backup_current
    
    # copy theme to termux config
    cp "$theme_file" "$TERMUX_DIR/theme.sh"
    
    # add to bashrc if not already there
    if ! grep -q "source ~/.termux/theme.sh" "$HOME/.bashrc" 2>/dev/null; then
        echo "source ~/.termux/theme.sh" >> "$HOME/.bashrc"
    fi
    
    # add to zshrc if zsh is installed
    if [ -f "$HOME/.zshrc" ]; then
        if ! grep -q "source ~/.termux/theme.sh" "$HOME/.zshrc"; then
            echo "source ~/.termux/theme.sh" >> "$HOME/.zshrc"
        fi
    fi
    
    echo -e "${GREEN}✓${NC} applied theme: ${YELLOW}$theme_name${NC}"
    echo -e "${BLUE}ℹ${NC} restart termux or run: ${CYAN}source ~/.bashrc${NC}"
    
    return 0
}

# main menu
show_menu() {
    clear
    echo -e "${PURPLE}"
    echo "  ╔═══════════════════════════════╗"
    echo "  ║    TERMUX THEME INSTALLER    ║"
    echo "  ╚═══════════════════════════════╝"
    echo -e "${NC}"
    
    list_themes
    
    echo -e "${YELLOW}Enter theme name${NC} (or 'q' to quit): "
    read -r choice
    
    if [ "$choice" = "q" ] || [ "$choice" = "Q" ]; then
        echo "bye! 👋"
        exit 0
    fi
    
    apply_theme "$choice"
    
    echo ""
    echo -e "${CYAN}Press enter to continue...${NC}"
    read
    show_menu
}

# check if theme name was passed as argument
if [ $# -eq 0 ]; then
    show_menu
else
    apply_theme "$1"
fi

#!/data/data/com.termux/files/usr/bin/bash

# ocean theme - cool blue waves
# calm and relaxing like the sea

# ocean colors - blues and cyans
export DARK_BLUE='\033[0;34m'
export BLUE='\033[1;34m'
export CYAN='\033[0;36m'
export BRIGHT_CYAN='\033[1;36m'
export LIGHT_BLUE='\033[1;94m'
export WHITE='\033[1;37m'
export NC='\033[0m'

# ocean ls colors
export LS_COLORS='di=1;34:fi=1;36:ln=1;96:pi=0;34:so=1;36:bd=1;34:cd=1;36:or=1;31:ex=1;34'

# wave prompt
export PS1="${BLUE}╭─${NC}${BRIGHT_CYAN}[\w]${NC}\n${BLUE}╰─${CYAN}≈${BRIGHT_CYAN}≈${LIGHT_BLUE}≈${NC} "

# ocean banner
show_banner() {
    clear
    echo -e "${BLUE}"
    echo "    ╔═══════════════════════════════════╗"
    echo -e "${BRIGHT_CYAN}    ║    ≈≈≈ OCEAN TERMINAL ≈≈≈        ║"
    echo -e "${LIGHT_BLUE}    ║                                   ║"
    echo "    ║     ▀▄░▄▀  ▄▄  █▀▀ ▄▀▄ █▄░█      ║"
    echo "    ║     ░░█░░ █░░█ █░░ █▀█ █░▀█      ║"
    echo -e "${CYAN}    ║     ░░▀░░ ░▀▀░ ▀▀▀ ▀░▀ ▀░░▀      ║"
    echo "    ║                                   ║"
    echo -e "${DARK_BLUE}    ║    ≈ ≈ ≈ ≈ ≈ ≈ ≈ ≈ ≈ ≈ ≈ ≈      ║"
    echo "    ╚═══════════════════════════════════╝"
    echo -e "${NC}"
    echo -e "${BRIGHT_CYAN}    🌊 dive into the deep blue${NC}"
    echo -e "${CYAN}    peaceful as ocean waves...${NC}"
    echo ""
}

show_banner

# ocean aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias wave='echo "🌊≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈🌊"'

# git ocean colors
git config --global color.ui auto
git config --global color.status.added "cyan bold"
git config --global color.status.changed "blue bold"
git config --global color.status.untracked "blue"
git config --global color.branch.current "cyan bold"
git config --global color.diff.new "cyan"
git config --global color.diff.old "blue"

# calm vibes
export LESS_TERMCAP_mb=$BRIGHT_CYAN
export LESS_TERMCAP_md=$BLUE
export LESS_TERMCAP_me=$NC

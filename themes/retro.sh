#!/data/data/com.termux/files/usr/bin/bash

# retro theme - 80s terminal vibes
# old school crt monitor feel

# retro colors - amber and green
export AMBER='\033[1;33m'
export ORANGE='\033[0;33m'
export DIM_ORANGE='\033[2;33m'
export GREEN='\033[1;32m'
export NC='\033[0m'

# retro ls colors - keep it simple
export LS_COLORS='di=1;33:fi=0;33:ln=1;32:ex=1;33'

# old school prompt
export PS1="${AMBER}[${ORANGE}\u@\h ${AMBER}\W]${NC}${ORANGE}\$${NC} "

# retro banner
show_banner() {
    clear
    echo -e "${AMBER}"
    echo "    ╔═══════════════════════════════════╗"
    echo "    ║                                   ║"
    echo "    ║    ██████╗ ███████╗████████╗     ║"
    echo "    ║    ██╔══██╗██╔════╝╚══██╔══╝     ║"
    echo "    ║    ██████╔╝█████╗     ██║        ║"
    echo "    ║    ██╔══██╗██╔══╝     ██║        ║"
    echo "    ║    ██║  ██║███████╗   ██║        ║"
    echo "    ║    ╚═╝  ╚═╝╚══════╝   ╚═╝        ║"
    echo "    ║                                   ║"
    echo "    ║      RETRO TERMINAL v1.0          ║"
    echo "    ║      Copyright (C) 1985           ║"
    echo "    ║                                   ║"
    echo "    ╚═══════════════════════════════════╝"
    echo -e "${NC}"
    echo -e "${ORANGE}    > SYSTEM READY${NC}"
    echo -e "${DIM_ORANGE}    > 640K ought to be enough for anybody${NC}"
    echo ""
}

show_banner

# retro aliases
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias dir='ls -l'
alias cls='clear'
alias mem='free -h'

# old school commands
alias basic='echo "LOAD \"*\",8,1"'
alias boot='echo "BOOTING SYSTEM..." && sleep 1 && clear'

# git retro colors
git config --global color.ui auto
git config --global color.status.changed "yellow"
git config --global color.status.untracked "yellow"
git config --global color.branch.current "yellow bold"

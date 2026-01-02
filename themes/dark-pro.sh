#!/data/data/com.termux/files/usr/bin/bash

# dark pro theme - like vscode dark
# professional but still looks good

# vscode dark colors
export BLACK='\033[0;30m'
export DARK_GRAY='\033[1;30m'
export BLUE='\033[0;34m'
export BRIGHT_BLUE='\033[1;34m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export RED='\033[0;31m'
export WHITE='\033[1;37m'
export NC='\033[0m'

# professional ls colors
export LS_COLORS='di=1;34:fi=0;37:ln=1;36:pi=0;33:so=1;35:bd=1;33:cd=1;33:or=1;31:ex=1;32'

# clean pro prompt
export PS1="${BLUE}╭─${NC}${WHITE}[\w]${NC} ${DARK_GRAY}git:${GREEN}\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)${NC}\n${BLUE}╰─${NC}${BRIGHT_BLUE}❯${NC} "

# pro banner
show_banner() {
    clear
    echo -e "${BRIGHT_BLUE}"
    echo "    ┌─────────────────────────────────┐"
    echo "    │      DARK PRO TERMINAL          │"
    echo "    │      vscode inspired            │"
    echo "    └─────────────────────────────────┘"
    echo -e "${NC}"
    echo -e "${DARK_GRAY}    ready to code...${NC}"
    echo ""
}

show_banner

# pro aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias tree='tree -C'
alias grep='grep --color=auto'

# git pro colors - like vscode
git config --global color.ui auto
git config --global color.status.added "green"
git config --global color.status.changed "yellow"
git config --global color.status.untracked "red"
git config --global color.branch.current "blue bold"
git config --global color.diff.meta "blue"
git config --global color.diff.new "green"
git config --global color.diff.old "red"

# editor preference
export EDITOR='nano'
export VISUAL='nano'

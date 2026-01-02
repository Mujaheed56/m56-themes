#!/data/data/com.termux/files/usr/bin/bash

# powerline theme - fancy arrows
# shows git status and more

# powerline colors
export BLACK='\033[0;30m'
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export WHITE='\033[1;37m'
export NC='\033[0m'

# fancy ls colors
export LS_COLORS='di=1;34:fi=0;37:ln=1;36:pi=0;33:so=1;35:bd=1;33:cd=1;33:or=1;31:ex=1;32'

# git status function
git_status() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
        
        # check if dirty
        if [[ -n $(git status -s 2>/dev/null) ]]; then
            echo -e "${YELLOW}  $branch ✗${NC}"
        else
            echo -e "${GREEN}  $branch ✓${NC}"
        fi
    fi
}

# powerline prompt with arrows
export PS1='${BLUE}╭─${NC}${CYAN}\u${WHITE}@${CYAN}\h${NC} ${BLUE}${NC}${PURPLE} \w${NC}$(git_status)\n${BLUE}╰─${NC}${WHITE}❯${NC} '

# powerline banner
show_banner() {
    clear
    echo -e "${BLUE}"
    echo "    ╔═══════════════════════════════════╗"
    echo "    ║   POWERLINE TERMINAL ACTIVATED    ║"
    echo "    ║        fancy arrows ahead         ║"
    echo "    ╚═══════════════════════════════════╝"
    echo -e "${NC}"
    echo -e "${CYAN}    → git aware prompt enabled${NC}"
    echo -e "${PURPLE}    → powerline style activated${NC}"
    echo ""
}

show_banner

# powerline aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias tree='tree -C'

# git powerline colors
git config --global color.ui auto
git config --global color.status.added "green bold"
git config --global color.status.changed "yellow bold"
git config --global color.status.untracked "red bold"
git config --global color.branch.current "cyan bold"
git config --global color.diff.meta "blue"

# note: for full powerline fonts install:
# pkg install powerline
# or get nerd fonts for mobile

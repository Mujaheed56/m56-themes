#!/data/data/com.termux/files/usr/bin/bash

# minimal theme - clean and simple
# no distractions just work

# colors - keep it simple
export WHITE='\033[1;37m'
export GRAY='\033[0;37m'
export DIM='\033[2;37m'
export NC='\033[0m'

# minimal prompt
export PS1="${WHITE}\w${NC} ${GRAY}>${NC} "

# clean ls colors - just basics
export LS_COLORS='di=1;37:fi=0:ln=1;36:ex=1'

# banner - super minimal
show_banner() {
    clear
    echo -e "${WHITE}termux${NC}"
    echo -e "${DIM}────────${NC}"
    echo ""
}

# show on start
show_banner

# basic aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias l='ls -CF'

# git minimal setup
git config --global color.ui true

# remove extra info from terminal
unset PROMPT_COMMAND

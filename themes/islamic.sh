#!/data/data/com.termux/files/usr/bin/bash

# islamic theme - calm and peaceful
# reminders and duas for the soul

# calm colors - greens and blues
export GREEN='\033[0;32m'
export BRIGHT_GREEN='\033[1;32m'
export CYAN='\033[0;36m'
export BRIGHT_CYAN='\033[1;36m'
export WHITE='\033[1;37m'
export GOLD='\033[1;33m'
export NC='\033[0m'

# peaceful ls colors
export LS_COLORS='di=1;32:fi=0;37:ln=1;36:pi=0;33:so=1;35:bd=1;33:cd=1;33:or=1;31:ex=1;32'

# simple clean prompt
export PS1="${BRIGHT_GREEN}┌─[${NC}${CYAN}\w${BRIGHT_GREEN}]\n└─❯${NC} "

# islamic banner with dua
show_banner() {
    clear
    echo -e "${GOLD}"
    echo "    ╔════════════════════════════════════╗"
    echo "    ║          بِسْمِ اللهِ              ║"
    echo "    ║      In the name of Allah          ║"
    echo "    ╚════════════════════════════════════╝"
    echo -e "${NC}"
    echo -e "${BRIGHT_GREEN}    Alhamdulillah for another day${NC}"
    echo -e "${CYAN}    \"And He is with you wherever you are\"${NC}"
    echo -e "${WHITE}    - Quran 57:4${NC}"
    echo ""
    
    # random daily reminder
    reminders=(
        "Remember to pray salah on time insha allah 🤲"
        "Make dua for your family and friends today"
        "Recite some Quran when you get a chance"
        "Be kind to everyone you meet today"
        "Forgive those who wronged you, for Allah's sake"
        "Seek knowledge, it's an act of worship"
        "SubhanAllah - glory be to Allah"
    )
    
    random_reminder=${reminders[$RANDOM % ${#reminders[@]}]}
    echo -e "${BRIGHT_CYAN}    💚 $random_reminder${NC}"
    echo ""
}

show_banner

# aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias quran='echo "May Allah guide us all 🤲"'
alias dua='echo "Allahumma inni as'\''aluka al-jannah (O Allah, I ask You for Paradise)"'

# git calm colors
git config --global color.ui auto
git config --global color.status.changed "green"
git config --global color.status.untracked "cyan"
git config --global color.branch.current "green bold"

# show time for salah reminders if available
if command -v pray-times &> /dev/null; then
    echo -e "${CYAN}Prayer times:${NC}"
    pray-times
    echo ""
fi

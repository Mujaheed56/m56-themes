#!/data/data/com.termux/files/usr/bin/bash

# fire theme - aggresive red/orange vibes for intense coding
# made with love akhi 🔥

# colors for termux
export PS1='\[\e[38;5;196m\]┌─[\[\e[38;5;208m\]\u\[\e[38;5;196m\]]─[\[\e[38;5;214m\]\w\[\e[38;5;196m\]]\n└──╼ \[\e[38;5;202m\]\$\[\e[0m\] '

# backup old colors if exist
[ -f ~/.termux/colors.properties ] && cp ~/.termux/colors.properties ~/.termux/colors.properties.bak

# create termux colors file
cat > ~/.termux/colors.properties << 'EOF'
# fire theme colors
# agressive red/orange scheme

# main colors
background=#1a0000
foreground=#ff4500
cursor=#ff6347

# black
color0=#2b0000
color8=#4d0000

# red  
color1=#ff0000
color9=#ff4500

# green
color2=#ff6600
color10=#ff8800

# yellow
color3=#ffaa00
color11=#ffcc00

# blue
color4=#cc3300
color12=#ff4400

# magenta
color5=#ff3366
color13=#ff6699

# cyan
color6=#ff6633
color14=#ff9966

# white
color7=#ffccaa
color15=#ffeedd
EOF

# apply termux reload
termux-reload-settings 2>/dev/null || echo "please restart termux to see changes"

# fire banner
clear
cat << 'BANNER'
   ▄████████    ▄█    █▄       ▄████████ 
  ███    ███   ███    ███     ███    ███ 
  ███    █▀    ███    ███     ███    █▀  
 ▄███▄▄▄       ███    ███    ▄███▄▄▄     
▀▀███▀▀▀       ███    ███   ▀▀███▀▀▀     
  ███          ███    ███     ███    █▄  
  ███          ███    ███     ███    ███ 
  ███           ▀██████▀      ██████████ 
                                          
    🔥 FIRE THEME ACTIVATED 🔥
    time to cook some code akhi
    lets gooo 🚀
BANNER

echo ""
echo "theme applied! restart termux if colors dont show"

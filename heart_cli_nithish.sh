#!/data/data/com.termux/files/usr/bin/bash

clear

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
WHITE='\033[1;37m'
NC='\033[0m'

# Heart / hacker banner
echo -e "${RED}"
cat <<'EOF'
      ♥♥♥       ♥♥♥
    ♥♥♥♥♥♥♥   ♥♥♥♥♥♥♥
   ♥♥♥♥♥♥♥♥♥ ♥♥♥♥♥♥♥♥♥
   ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
    ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
      ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
        ♥♥♥♥♥♥♥♥♥♥♥
          ♥♥♥♥♥♥♥
            ♥♥♥
             ♥
EOF
echo -e "${NC}"

if command -v figlet >/dev/null 2>&1; then
    figlet -f small "HACKER NITHISH" 2>/dev/null || echo "HACKER NITHISH"
else
    echo "===== HACKER NITHISH ====="
fi

echo -e "${MAGENTA}              FOR SOMEONE SPECIAL  ♥${NC}"
echo
echo -e "${CYAN}╔══════════════════════════════════════╗${NC}"
echo -e "${WHITE}║        ❤️  HEART TERMINAL  ❤️       ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════╝${NC}"
echo

# Device info
MODEL="$(getprop ro.product.model 2>/dev/null)"
ANDROID="$(getprop ro.build.version.release 2>/dev/null)"
STORAGE="$(df -h /data 2>/dev/null | awk 'NR==2 {print $4}')"

echo -e "${GREEN}  Device  :${NC} ${MODEL:-Unknown}"
echo -e "${YELLOW}  Android :${NC} ${ANDROID:-Unknown}"
echo -e "${GREEN}  Free    :${NC} ${STORAGE:-Unknown}"
echo -e "${CYAN}  Date    :${NC} $(date '+%d-%m-%Y')"
echo -e "${CYAN}  Time    :${NC} $(date '+%I:%M:%S %p')"
echo

echo -e "${RED}        ♥  BY HACKER NITHISH  ♥${NC}"
echo

# Optional system info
if command -v neofetch >/dev/null 2>&1; then
    neofetch --ascii_distro arch --ascii_colors 4 4 --colors 9 2 3 5 4 6
fi

alias LOGIN='clear && source ~/.bashrc'
alias LOGOUT='exit'

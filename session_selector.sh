RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
BOLD="\033[1m"
RESET="\033[0m"

function session_selector() {
    echo -e "${BOLD}${CYAN}What do you want to do?${RESET}"
    echo -e "${GREEN}1) Local Terminal${RESET}" # Modify this message
    echo -e "${YELLOW}2) CNLab Server (Ubuntu)${RESET}" # Modify this message
    echo -e "${MAGENTA}3) CNLab Desktop (Windows)${RESET}" # Modify this message
    echo -en "${BOLD}${BLUE}Choose an option (1-3): ${RESET}"
    read choice

    case $choice in
        1)
            echo -e "${GREEN}Opening Local Terminal (macOS)...${RESET}" # Modify this message
            ;;
        2)
            echo -e "${YELLOW}Connecting to CNLab Server (Ubuntu)...${RESET}" # Modify this message
            ssh cnserver@165.xxx.xxx.xxx # Modify this ipaddr
            ;;
        3)
            echo -e "${MAGENTA}Connecting to CNLab Desktop (Windows)...${RESET}" # Modify this message
            ssh caput@165.xxx.xxx.xxx # Modify this ipaddr
            ;;
        *)
            echo -e "${RED}Don't turn on your computer today :( ${RESET}" # I like it
            ;;
    esac
}

session_selector

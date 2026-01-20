#!/bin/bash

# Dev Clock Plasma Widget Installer
# Author: sovbyte

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║    Dev Clock Widget Installer         ║${NC}"
echo -e "${BLUE}║    for KDE Plasma 6                    ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════╝${NC}"
echo ""

if ! command -v kpackagetool6 &> /dev/null; then
    echo -e "${RED}✗ Error: kpackagetool6 not found${NC}"
    echo -e "${YELLOW}  This widget requires KDE Plasma 6${NC}"
    exit 1
fi

echo -e "${YELLOW}Removing old version (if exists)...${NC}"
kpackagetool6 --type Plasma/Applet --remove dev.clock 2>/dev/null

echo -e "${YELLOW}Installing Dev Clock widget...${NC}"
if kpackagetool6 --type Plasma/Applet --install .; then
    echo -e "${GREEN}✓ Widget installed successfully!${NC}"
else
    echo -e "${RED}✗ Installation failed${NC}"
    exit 1
fi

echo ""
echo -e "${YELLOW}Do you want to restart Plasma now? (y/n)${NC}"
read -r answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    echo -e "${YELLOW}Restarting Plasma...${NC}"
    kquitapp6 plasmashell && sleep 2 && plasmashell &
    echo -e "${GREEN}✓ Plasma restarted${NC}"
fi

echo ""
echo -e "${GREEN}╔════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║    Installation Complete!              ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════╝${NC}"
echo ""
echo -e "To add the widget:"
echo -e "  ${BLUE}1.${NC} Right-click on your desktop"
echo -e "  ${BLUE}2.${NC} Click 'Add Widgets'"
echo -e "  ${BLUE}3.${NC} Search for 'Dev Clock'"
echo -e "  ${BLUE}4.${NC} Add it to your desktop"
echo ""
echo -e "To configure:"
echo -e "  Right-click on widget → ${BLUE}Configure Dev Clock...${NC}"
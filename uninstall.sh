#!/bin/bash

# Dev Clock Plasma Widget Uninstaller

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Uninstalling Dev Clock widget...${NC}"

if kpackagetool6 --type Plasma/Applet --remove dev.clock; then
    echo -e "${GREEN}✓ Widget uninstalled successfully!${NC}"
else
    echo -e "${RED}✗ Uninstallation failed or widget not found${NC}"
    exit 1
fi

echo ""
echo -e "${YELLOW}Restart Plasma? (y/n)${NC}"
read -r answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    kquitapp6 plasmashell && sleep 2 && plasmashell &
    echo -e "${GREEN}✓ Plasma restarted${NC}"
fi

echo -e "${GREEN}✓ Uninstallation complete!${NC}"
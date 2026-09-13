#!/usr/bin/env bash

# Stop on errors
set -e

echo "[*] Initializing MyHost setup..."

# 1. Detect environment and install dependencies
if command -v pkg &>/dev/null; then
    echo "[*] Android (Termux) detected."
    pkg update -y
    pkg install -y wget curl nano whiptail jq screen openjdk-21
elif command -v apt &>/dev/null; then
    echo "[*] Debian/Ubuntu/WSL detected."
    sudo apt update && sudo apt install -y wget curl nano whiptail jq screen openjdk-21-jre-headless
elif command -v brew &>/dev/null; then
    echo "[*] macOS detected."
    brew install openjdk screen whiptail
fi

# 2. Setup ~/bin directory
TARGET_DIR="$HOME/bin"
mkdir -p "$TARGET_DIR"

# 3. Download the main application script
echo "[*] Downloading MyHost application core..."
curl -sSL -o "$TARGET_DIR/myhost" https://raw.githubusercontent.com/pokeboi-beep/myhost/main/myhost

# 4. Make executable
chmod +x "$TARGET_DIR/myhost"

# 5. Automatically add ~/bin to PATH if not already present
SHELL_RC=""
if [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
elif [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
else
    SHELL_RC="$HOME/.profile"
fi

if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    echo 'export PATH="$HOME/bin:$PATH"' >> "$SHELL_RC"
    export PATH="$HOME/bin:$PATH"
fi

echo ""
echo "[✔] MyHost installation complete!"
echo "[*] Restart your terminal or run: source $SHELL_RC"
echo "[*] Then launch the app by typing: myhost"
echo ""

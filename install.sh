#!/usr/bin/env bash

if command -v pkg &>/dev/null; then
    echo "[*] Termux environment detected. Installing dependencies..."
    pkg update && pkg upgrade -y
    pkg install -y wget curl nano proot-distro termux-api newt jq screen
elif command -v apt &>/dev/null; then
    echo "[*] Debian/Ubuntu system detected. Installing dependencies..."
    sudo apt update && sudo apt install -y wget curl nano newt jq screen openjdk-21-jre-headless
fi

TARGET_BIN="$HOME/bin/myhost"
mkdir -p "$HOME/bin"

echo "[*] Downloading MyHost v0.0..."
curl -sSL -o "$TARGET_BIN" [https://raw.githubusercontent.com/YOUR_USERNAME/myhost/main/myhost](https://raw.githubusercontent.com/YOUR_USERNAME/myhost/main/myhost)

chmod +x "$TARGET_BIN"

if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
    echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.zshrc" 2>/dev/null
fi

echo -e "\n[✔] MyHost v0.0 successfully installed!"
echo -e "Run 'myhost' to open the server management dashboard.\n MyHost is still in Alpha stages so report bugs to Pokeboi-beep on Github."

# MyHost (v0.0)

> A lightweight, cross-platform CLI script to deploy and manage self-hosted Minecraft Java Edition servers effortlessly on **Linux, macOS, Windows (WSL), and Android (Termux)**.

---

## Key Features

* **Cross-Platform Support:** Run server environments on PC or mobile devices.
* **One-Line Installer:** Automatic dependency setup and path configuration.
* **Interactive TUI Dashboard:** Menu-driven management using `whiptail` for creation, plugin installation, and settings adjustment.
* **Console Streaming:** Access server logs and send commands in real-time via `screen`.

---

## Quick Start (One-Liner Install)

Open your terminal (PC or Android Termux) and paste the following command to install **MyHost**:

```bash
curl -sSL https://raw.githubusercontent.com/pokeboi-beep/myhost/main/install.sh | bash

```

Once installed, launch the dashboard anytime by typing:

```bash
myhost

```

---

## Prerequisites & Environment Setup

Before running the installer, make sure your terminal environment has the required packages.

### Android (Termux)

> **Warning**
> **Do NOT download Termux from the Google Play Store.** The Play Store build is deprecated and unsupported.

Download and install the latest build from one of the following sources:

* **F-Droid:** [F-Droid Termux Download](https://f-droid.org/packages/com.termux/)
* **GitHub Releases:** [Termux GitHub Releases](https://github.com/termux/termux-app/releases)

Once installed, open Termux and prepare your system packages:

```bash
pkg update && pkg upgrade -y

```

### Windows (WSL)

1. Open **PowerShell** as Administrator and enable WSL:
```powershell
wsl --install

```


2. Restart your PC if prompted, then open your **Ubuntu / WSL** terminal and install system dependencies:
```bash
sudo apt update && sudo apt install -y openjdk-21-jre-headless curl screen whiptail nano

```



### Linux (Ubuntu / Debian / Mint)

Open your terminal and run:

```bash
sudo apt update && sudo apt install -y openjdk-21-jre-headless curl screen whiptail nano

```

### macOS

Open Terminal and install Java and screen using [Homebrew](https://brew.sh/):

```bash
brew install openjdk screen

```

---

## File Storage Locations

Server worlds, plugins, and configuration files are organized dynamically depending on your environment:

| Platform | Default Server Directory | Accessing Files |
| --- | --- | --- |
| **Android (Termux)** | `/sdcard/MyHost/` | Open internal storage via **ZArchiver** or your native **Files app** $\rightarrow$ `MyHost` |
| **PC (Linux / macOS)** | `~/Documents/MyHost/` | Open your File Manager $\rightarrow$ **Documents** $\rightarrow$ `MyHost` |
| **PC (Windows WSL)** | `C:\Users\<User>\Documents\MyHost\` | Open Windows File Explorer $\rightarrow$ **Documents** $\rightarrow$ `MyHost` |

---

## Directory Layout

Inside your target directory, each created server receives an isolated folder:

```text
MyHost/
└── Server1/
    ├── plugins/             <-- Downloaded .jar plugins go here
    ├── world/               <-- Overworld save directory
    ├── server.properties    <-- Server configuration (ports, slots, MOTD)
    ├── server.jar           <-- Server software jar (Paper/Purpur/Spigot)
    └── ops.json             <-- Server admin / operator permissions

```

---

## Repository Structure (For Maintainers)

If you are cloning or contributing to this project, ensure your repository layout matches the following structure:

```text
myhost/
├── install.sh              <-- Installation & setup script
├── myhost                  <-- Core application CLI & TUI logic
└── README.md               <-- Project documentation

```

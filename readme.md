# MyHost (v0.0)

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=flat-square&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Platform-Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![Android](https://img.shields.io/badge/Platform-Android%2FTermux-3DDC84?style=flat-square&logo=android&logoColor=white)
![Windows WSL](https://img.shields.io/badge/Platform-Windows%20WSL-0078D6?style=flat-square&logo=windows&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)

> A lightweight command-line tool designed to set up and manage Java Minecraft servers across **Linux, macOS, Windows (WSL), and Android (Termux)**.

---

## Features

* **Cross-Platform:** Works on both desktop computers and mobile devices.
* **Automated Setup:** Downloads essential packages and configures system paths with one command.
* **Interactive Menu:** Features a user-friendly interface powered by `whiptail` to create servers, add plugins, and tweak settings.
* **Live Console Access:** Monitor server logs and send commands in real time using `screen`.

---

## Prerequisites

Ensure your system has the required dependencies before installing MyHost.

### Android (Termux)

> **Important**
> **Do not download Termux from the Google Play Store.** The Play Store release is abandoned and no longer receives updates.

Download the latest version from either of these sources:

* **F-Droid:** [Download via F-Droid](https://f-droid.org/packages/com.termux/)
* **GitHub:** [Download via GitHub Releases](https://github.com/termux/termux-app/releases)

After opening Termux, update your system packages:

```bash
pkg update && pkg upgrade -y

```

### Windows (WSL)

1. Open **PowerShell** as Administrator and run:
```powershell
wsl --install

```


2. Restart your PC if prompted. Open your **Ubuntu / WSL** terminal and run:
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

## Quick Start

Run this command in your terminal (PC or Android Termux) to install **MyHost**:

```bash
curl -sSL -o install.sh https://raw.githubusercontent.com/pokeboi-beep/myhost/main/install.sh && bash install.sh
```

After installation completes, type the following command to launch the app:

```bash
myhost

```
---

## File Storage Locations

Server files are automatically sorted depending on your operating system:

| Platform | Location | How to Access |
| --- | --- | --- |
| **Android (Termux)** | `/sdcard/MyHost/` | Internal Storage $\rightarrow$ `MyHost` (via **ZArchiver** or your file app) |
| **PC (Linux / macOS)** | `~/Documents/MyHost/` | File Manager $\rightarrow$ **Documents** $\rightarrow$ `MyHost` |
| **PC (Windows WSL)** | `C:\Users\<User>\Documents\MyHost\` | Windows File Explorer $\rightarrow$ **Documents** $\rightarrow$ `MyHost` |

---

## Directory Layout

Each server you generate is assigned its own directory inside the main folder:

```text
MyHost/
└── Server1/
    ├── plugins/             <-- Place custom .jar plugins here
    ├── world/               <-- Overworld save files
    ├── server.properties    <-- Configuration file (ports, slots, MOTD)
    ├── server.jar           <-- Core server engine (Paper, Purpur, or Spigot)
    └── ops.json             <-- Server administrator list

```

---

## Repository Structure

If you clone or contribute to the source code, maintain this file layout:

```text
myhost/
├── install.sh              <-- Installation script
├── myhost                  <-- Core application script
└── README.md               <-- Documentation

```

# MyHost v0.0

A tool for self-hosting Java Minecraft servers on PC and Android.

# MyHost v0.0 - One-Liner Installation & GitHub Deployment Guide

This guide explains how to install **MyHost v0.0** on PC (Linux/macOS/WSL) or Android (Termux) using a single command.

---

# Setting up the terminal and installing essential dependencies.

## Android:

### Installing and Setting Up Termux

Important: Do NOT use the version of Termux on the Google Play Store (it is deprecated and broken). Download Termux from F-Droid or GitHub.

Use these two links to download Termux.

https://f-droid.org/packages/com.termux/
https://github.com/termux/termux-app

## PC:

### Windows

Open **Powershell** as administrator and run:
```bash
wsl --install | bash

Open Windows Subsystem for Linux (WSL) and run:

``bash
sudo apt update && sudo apt install -y openjdk-21-jre-headless curl screen whiptail nano | bash

### Linux (Ubuntu / Debian / Mint):

Open your terminal and run:
```bash
sudo apt update && sudo apt install -y openjdk-21-jre-headless curl screen whiptail nano | bash

### MacOS

Open Terminal and install **screen** and **openjdk** via Homebrew:
``bash
brew install openjdk screen | bash

---

# Installing MyHost

## One-Liner Installation Command

You can install MyHost directly with a single shell command without copying the full script manually.

### Standard Command (Raw GitHub / Gist)
Open **Termux** (Android) or your **Terminal** (PC) and run:

```bash
curl -sSL [https://raw.githubusercontent.com/pokeboi-beep/myhost/main/install.sh](https://raw.githubusercontent.com/pokeboi-beep/myhost/main/install.sh) | bash

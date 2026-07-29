#!/usr/bin/env bash
set -euo pipefail

echo "=== Installing dependencies ==="

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS"
    if ! command -v brew >/dev/null 2>&1; then
        echo "Error: Homebrew not found. Install from https://brew.sh"
        exit 1
    fi

    if ! command -v gnuplot >/dev/null 2>&1; then
        echo "Installing gnuplot ..."
        brew install gnuplot
    else
        echo "gnuplot already installed"
    fi

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux"

    if command -v apt-get >/dev/null 2>&1; then
        echo "Using apt-get"
        sudo apt-get update
        sudo apt-get install -y gnuplot
    elif command -v dnf >/dev/null 2>&1; then
        echo "Using dnf"
        sudo dnf install -y gnuplot
    elif command -v yum >/dev/null 2>&1; then
        echo "Using yum"
        sudo yum install -y gnuplot
    elif command -v pacman >/dev/null 2>&1; then
        echo "Using pacman"
        sudo pacman -S --noconfirm gnuplot
    elif command -v zypper >/dev/null 2>&1; then
        echo "Using zypper"
        sudo zypper install -y gnuplot
    else
        echo "Error: Unsupported Linux package manager"
        exit 1
    fi

else
    echo "Error: Unsupported OS ($OSTYPE)"
    exit 1
fi

echo "=== Dependencies installed ==="

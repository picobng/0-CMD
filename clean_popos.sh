#!/bin/bash
# -------------------------------------------------------------------------
# Savior Pop!_OS Cleaner
# Script: clean_popos.sh
# Author: lca
# Description: Deep cleaning script for Pop!_OS / Ubuntu.
#              Removes system caches, Docker artifacts, Flatpak runtimes,
#              and dev tool caches (Gradle/Maven/NPM/Sonar).
# Usage: chmod +x clean_popos.sh && ./clean_popos.sh
# -------------------------------------------------------------------------

echo "--- 🚀 Starting Savior Pop!_OS Cleaner ---"

# 1. User Cache Cleaning
echo "[1/6] Cleaning user caches (Safe)..."
rm -rf ~/.cache/*
rm -rf ~/.local/share/Trash/*

# 2. Docker Smart Cleaning
# Removes stopped containers, unused networks, and dangling images
if command -v docker &> /dev/null; then
    echo "[2/6] Optimizing Docker (Volumes and Images)..."
    docker system prune -a --volumes -f
fi

# 3. Development Tools Cleaning
# Targets common heavy folders for Java/JS devs
echo "[3/6] Cleaning dev tool caches (Gradle, Maven, Sonar)..."
[ -d ~/.gradle/caches ] && rm -rf ~/.gradle/caches/
[ -d ~/.m2/repository ] && rm -rf ~/.m2/repository/
[ -d ~/.sonarlint/storage ] && rm -rf ~/.sonarlint/storage/

# 4. Flatpak Cleanup
# Removes unused runtimes to save space
if command -v flatpak &> /dev/null; then
    echo "[4/6] Removing unused Flatpaks..."
    flatpak uninstall --unused -y
fi

# 5. System Logs & APT Cache (Requires Sudo)
echo "[5/6] Cleaning system logs and APT cache..."
sudo journalctl --vacuum-time=1d
sudo apt autoremove --purge -y
sudo apt clean

# 6. Final Check
echo "[6/6] Current disk usage:"
df -h /home

echo "--- ✅ Cleanup successfully completed! ---"

#!/bin/bash

set -ouex pipefail

if [ -d /ctx/system_files ]; then
    cp -avf /ctx/system_files/. /
fi

# Remove packages from the base image when they are installed
packages_to_remove=()
for pkg in \
    gnome-tour \
    gnome-software \
    gnome-software-rpm-ostree \
    qt5-qtbase \
    qt6-qtbase \
    orca \
    speech-dispatcher \
    speech-dispatcher-espeak-ng \
    speech-dispatcher-libs \
    speech-dispatcher-utils \
    espeak-ng \
    gnome-classic-session \
    gnome-shell-extension-apps-menu \
    gnome-shell-extension-launch-new-instance \
    gnome-shell-extension-places-menu \
    gnome-shell-extension-window-list \
    gnome-shell-extension-background-logo \
    fedora-flathub-remote
do
    if rpm -q --quiet "$pkg"; then
        packages_to_remove+=("$pkg")
    else
        echo "Skipping removal of $pkg because it is not installed in the base image."
    fi
done
if ((${#packages_to_remove[@]})); then
    dnf5 remove -y "${packages_to_remove[@]}"
fi

# Install packages
dnf5 install -y \
    aria2 \
    bat \
    btop \
    createrepo_c \
    dialog \
    distrobox \
    duf \
    fd-find \
    fzf \
    gamescope \
    glow \
    just \
    kiwix-tools \
    libva-utils \
    msedit \
    powertop \
    s-tui \
    stress-ng \
    tldr \
    tmux \
    yt-dlp \
    zenity \
    zoxide \
    ShellCheck

# Clean dnf metadata before the final image is committed
dnf5 clean all

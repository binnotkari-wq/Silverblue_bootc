# Custom Fedora Silverblue Image

Build OCI and ISO image from Fedora Silverblue, with tweaks and additionals softwares.

This repository builds a custom bootc image on GitHub Actions.

| Setting | Value |
|---------|-------|
| Repository | `binnotkari-wq/silverblue_bootc` |
| Base Image | `Fedora Silverblue` |
| Base Image URI | `quay.io/fedora-ostree-desktops/silverblue:44` |
| Published Image | `ghcr.io/binnotkari-wq/silverblue_bootc:latest` |
| Build Method | `Containerfile` |

## Managed By Atomic Image Builder

This repo is managed by `atomic-image-builder`. `.atomic-image-builder.json` is the saved settings file and source of truth for future updates.

If you hand-edit this repo after `atomic-image-builder` creates or manages it, stop using `atomic-image-builder` for this repo.

Later tool-driven updates rewrite managed files and can overwrite manual changes, especially `README.md` and `build_files/build.sh`.

## Requested Packages

These are the package names requested by this repo's generated build script.
Selected packages are what this repo will attempt to add, even if some are already present in the chosen base image.

- `aria2`
- `bat`
- `btop`
- `createrepo_c`
- `dialog`
- `distrobox`
- `duf`
- `fd-find`
- `fzf`
- `gamescope`
- `glow`
- `just`
- `kiwix-tools`
- `libva-utils`
- `msedit`
- `powertop`
- `s-tui`
- `stress-ng`
- `tldr`
- `tmux`
- `yt-dlp`
- `zenity`
- `zoxide`
- `ShellCheck`

## COPR Repositories

- None.

## Enabled Services

- None.

## Removed Base Packages

- `gnome-tour`
- `gnome-software`
- `gnome-software-rpm-ostree`
- `qt5-qtbase`
- `qt6-qtbase`
- `orca`
- `speech-dispatcher`
- `speech-dispatcher-espeak-ng`
- `speech-dispatcher-libs`
- `speech-dispatcher-utils`
- `espeak-ng`
- `gnome-classic-session`
- `gnome-shell-extension-apps-menu`
- `gnome-shell-extension-launch-new-instance`
- `gnome-shell-extension-places-menu`
- `gnome-shell-extension-window-list`
- `gnome-shell-extension-background-logo`
- `fedora-flathub-remote`

## Using The Image

After the first successful GitHub Actions build finishes, switch to it with:

```bash
sudo bootc switch ghcr.io/binnotkari-wq/silverblue_bootc:latest
systemctl reboot
```

#!/usr/bin/env bash
# Nightfeed — Plasma Style — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DST=${XDG_DATA_HOME:-$HOME/.local/share}/plasma/desktoptheme/Nightfeed
rm -rf "$DST"; mkdir -p "$DST"
cp -r "$HERE"/{metadata.json,plasmarc,widgets,dialogs,solid,translucent} "$DST"/
plasma-apply-desktoptheme Nightfeed

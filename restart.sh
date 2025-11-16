#!/usr/bin/env bash
# Upgrade a KDE Plasma plasmoid and restart Plasma Shell

set -euo pipefail

# Directory of this script (assumed to be inside your plasmoid folder)
PLASMOID_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Upgrading plasmoid in $PLASMOID_DIR ==="
plasmapkg2 --upgrade "$PLASMOID_DIR"

echo "=== Rebuilding Plasma service cache ==="
kbuildsycoca5 --noincremental

echo "=== Clearing Plasma QML cache ==="
rm -rf "${HOME}/.cache/plasma/"*

echo "=== Restarting Plasma Shell ==="
kquitapp5 plasmashell
kstart5 plasmashell

echo "=== Done ==="

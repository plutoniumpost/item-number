#!/bin/bash
# Double-click this file on macOS to launch item-number in Chrome at 1920x1080

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
FILE="$SCRIPT_DIR/item-number.html"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ ! -f "$CHROME" ]; then
  echo "Google Chrome not found"
  exit 1
fi

# Launch in app mode (no toolbar)
"$CHROME" --app="file://$FILE" &

# Wait for the window to appear, then resize via AppleScript
sleep 1
osascript -e '
tell application "Google Chrome"
  activate
  set bounds of front window to {0, 0, 1920, 1080}
end tell
'

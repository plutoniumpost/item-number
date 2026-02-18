#!/bin/bash
# Launch item-number in a clean Chrome window at 1920x1080

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
FILE="$SCRIPT_DIR/item-number.html"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ ! -f "$CHROME" ]; then
  echo "Google Chrome not found at: $CHROME"
  exit 1
fi

"$CHROME" --app="file://$FILE" --window-size=1920,1080

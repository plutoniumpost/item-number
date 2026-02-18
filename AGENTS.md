# AGENTS.md

## Project Overview

Single-file HTML application (`item-number.html`) that displays a large number with increment/decrement controls. Optimized for 1920x1080 video feeds. No build system, no dependencies.

## Architecture

- **Single file**: All markup, styles, and logic live in `item-number.html`.
- **No frameworks**: Vanilla HTML/CSS/JS only.
- **No build step**: Open directly in a browser.
- **Docker**: Optional Flask server (`serve.py` + `Dockerfile`) for testing only.
- **Launch script**: `start.command` opens Chrome in app mode at 1920x1080 on macOS. Double-clickable from Finder.

## Conventions

- Keep it as a single self-contained HTML file. Do not split into separate CSS/JS files unless the complexity demands it.
- Target modern browsers (ES6+, CSS custom properties, Fullscreen API).
- Maintain the dark theme and minimal UI aesthetic.
- Number sizing uses `vh` units to fill vertical space on 16:9 displays.

## Git Workflow

- `master` is for tagged releases only. Never commit directly to `master`.
- `dev` is the working branch. Feature branches should be created from `dev`.
- Use annotated tags for releases (e.g., `v1.0.0`).

## Testing

- Manual browser testing is sufficient given the scope. Open the file and verify controls, keyboard shortcuts, and fullscreen behavior.
- Use Docker (`docker build -t item-number . && docker run -p 5000:5000 item-number`) to preview over the network.

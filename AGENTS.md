# AGENTS.md

## Project Overview

Single-file HTML application (`item-number.html`) that displays a large number with increment/decrement controls. No build system, no dependencies.

## Architecture

- **Single file**: All markup, styles, and logic live in `item-number.html`.
- **No frameworks**: Vanilla HTML/CSS/JS only.
- **No build step**: Open directly in a browser.

## Conventions

- Keep it as a single self-contained HTML file. Do not split into separate CSS/JS files unless the complexity demands it.
- Target modern browsers (ES6+, CSS custom properties, Fullscreen API).
- Maintain the dark theme and minimal UI aesthetic.

## Git Workflow

- `master` is for tagged releases only. Never commit directly to `master`.
- `dev` is the working branch. Feature branches should be created from `dev`.
- Use annotated tags for releases (e.g., `v1.0.0`).

## Testing

- Manual browser testing is sufficient given the scope. Open the file and verify controls, keyboard shortcuts, and fullscreen behavior.

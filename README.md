# Item Number

A minimal, full-screen number display built as a single HTML file. Designed for use as a stage counter, item tracker, or any scenario where you need a large, readable number on screen. Optimized for 1920x1080 video feeds.

## Usage

Open `item-number.html` in any modern browser. No build step or dependencies required.

### macOS Launch

Double-click `start.command` to open the file in a clean Chrome window at 1920x1080 with no toolbar. No terminal required.

### Docker (Testing)

To test over the network:

```bash
docker build -t item-number .
docker run -d --name item-number -p 5000:5000 item-number
```

Then open `http://<host-ip>:5000` in a browser.

### Controls

| Action | Input |
|---|---|
| Increment | Click **+**, Arrow Up, Arrow Right |
| Decrement | Click **-**, Arrow Down, Arrow Left |
| Set value | Type a number in the input field |
| Hide/show controls | Press **H** |
| Toggle fullscreen | Press **F** |

Controls auto-hide after 5 seconds of mouse inactivity.

## Project Structure

| File | Purpose |
|---|---|
| `item-number.html` | Main application (self-contained) |
| `start.command` | macOS Chrome launcher (1920x1080, no toolbar, double-clickable) |
| `Dockerfile` | Docker image for testing |
| `serve.py` | Flask server used by Docker |

## License

MIT

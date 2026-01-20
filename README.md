# Dev Clock - Plasma Widget

A KDE Plasma 6 widget that displays the current time styled as code in a code editor theme.

## Features

- **Code-style display** - Time displayed as a JavaScript object with syntax highlighting
- **Customizable fields** - Show/hide day, month, year, day of week, hour, minute, second, and day progress
- **Customizable colors** - Change colors for keywords, variables, numbers, strings, symbols, background, border, and line numbers
- **Line numbers** - Optional line numbers like a real code editor
- **Day progress** - Shows percentage of the day completed

## Installation

### Automatic Installation
```bash
git clone https://github.com/sovbyte/dev-clock-plasma-widget
cd devClock
chmod +x install.sh
./install.sh
```

### Manual Installation
```bash
kpackagetool6 --type Plasma/Applet --install .
```

### Restart Plasma
```bash
kquitapp6 plasmashell && plasmashell &
```

Or log out and log back in.

## Usage

1. Right-click on your desktop or panel
2. Click "Add Widgets"
3. Search for "Dev Clock"
4. Add it to your desktop or panel

## Configuration

Right-click on the widget → Configure Dev Clock...

### Appearance Tab
- Toggle line numbers
- Show/hide individual fields (day, month, year, etc.)

### Colors Tab
- Customize all colors with hex codes

## Uninstallation
```bash
./uninstall.sh
```

Or manually:
```bash
kpackagetool6 --type Plasma/Applet --remove dev.clock
```

## Requirements

- KDE Plasma 6
- Qt 6

## Author

**sovbyte**
- Email: sovbyte@gmail.com
- GitHub: https://github.com/sovbyte

## License

MIT License - see [LICENSE](LICENSE) file

## Contributing

Pull requests are welcome! For major changes, please open an issue first.

MIT License

Copyright (c) 2026 sovbyte

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

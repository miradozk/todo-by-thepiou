# To Do - Plasma Widget

A simple and elegant task manager widget for KDE Plasma 6.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Plasma](https://img.shields.io/badge/Plasma-6.0+-blue.svg)

## Features

✅ **Quick task management** - Add, complete, and delete tasks easily
✅ **Smart filtering** - View all, active, or completed tasks
✅ **Badge counter** - Shows number of incomplete tasks on panel icon
✅ **Synchronized data** - All widget instances share the same task list
✅ **Date grouping** - Tasks organized by Today, Yesterday, and older dates
✅ **System integration** - Uses Plasma's native styling and colors

## Screenshots

<!-- Add screenshots here -->

## Installation

### Method 1: Using the install script

1. Clone this repository:
```bash
git clone https://github.com/miradozk/todo-by-thepiou.git
cd todo-by-thepiou
```

2. Run the installation script:
```bash
./install-plasma-widget.sh
```

3. Restart Plasma Shell:
```bash
plasmashell --replace &
```

4. Add the widget to your panel or desktop:
   - Right-click on desktop or panel
   - Select "Add Widgets..."
   - Search for "To Do"
   - Drag and drop to your preferred location

### Method 2: Manual installation

```bash
kpackagetool6 --type=Plasma/Applet --install plasma-widget
plasmashell --replace &
```

## Development

### Quick reload during development

After making changes to the widget:

```bash
./dev-reload.sh
```

This script will:
- Uninstall the current version
- Reinstall the updated widget
- Restart Plasma Shell

### Project structure

```
todo-by-thepiou/
├── plasma-widget/
│   ├── metadata.json              # Widget metadata
│   └── contents/
│       ├── ui/
│       │   ├── main.qml          # Main UI
│       │   └── storage.js        # Database operations
│       └── config/
│           └── main.xml          # Configuration schema
├── install-plasma-widget.sh       # Installation script
├── dev-reload.sh                  # Development reload script
└── README.md
```

## Usage

### Adding a task
- Type your task in the input field
- Press Enter or click the "Ajouter" button

### Managing tasks
- Click the checkbox to mark a task as complete/incomplete
- Click the delete (×) button to remove a task

### Filtering tasks
- **Tout** - Show all tasks
- **Actives** - Show only incomplete tasks
- **Terminées** - Show only completed tasks

## Data Storage

Tasks are stored using QtQuick LocalStorage in:
```
~/.local/share/<app-name>/QML/OfflineStorage/
```

All widget instances (panel and desktop) share the same database, ensuring your tasks are always synchronized.

## Uninstallation

```bash
kpackagetool6 --type=Plasma/Applet --remove=thepiou.plasma.todo
plasmashell --replace &
```

## Requirements

- KDE Plasma 6.0 or higher
- Qt 6
- kpackagetool6

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**miradozk**

- GitHub: [@miradozk](https://github.com/miradozk)
- Project: [todo-by-thepiou](https://github.com/miradozk/todo-by-thepiou)


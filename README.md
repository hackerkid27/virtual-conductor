# virtual-conductor

A **musical metronome app** built with **Godot 4**, designed to visually simulate a **conductor’s arm movements** for different time signatures.

The app features:
- **Animated beat patterns** (e.g., "V" for 2/4, triangle for 3/4, cross for 4/4).
- **Customizable tempo** control using a **SpinBox** with large, easy-to-read text.
- **Simple, clean UI** that adapts to different screen sizes.
- **Global theme** for a consistent visual style across the app.

---

## 🚀 How to Run
1. Download or clone the repository:
    ```bash
    git clone https://github.com/hackerkid27/conductor-metronome-godot.git
    ```
2. Open the project with **Godot 4.x**.
3. Run the main scene (`BeatAnimation`) to start the metronome.

---

## 🛠️ Development Notes
- Built with **Godot 4.2**.
- Uses **Control nodes** for flexible UI layout.
- All scripts are in GDScript.

---

## 📁 Repository Structure
**Does not contain all files.** Only primary files are listed. (*e.g.*, icon.svg is the icon that is displayed as the window icon. It is not displayed in the hierarchy.)
```cpp
res://
  ├── scenes/
  |    ├── animations/
  |    |    ├── ...contains animation nodes...
  |    ├── main.tcsn (main scene)
  |    ├── ui.tcsn (ui scene)
  ├── scripts/
  |    ├── ...scripts...
  ├── themes/
  |    ├── ...will eventually contain theme resources...
  ├── assets/
  |    ├── ...graphics assets such as the position indicator...
  ├── project.godot
  ├── README.md
```

# LazyCV - Quick Start Guide

A minimalist, ATS-friendly CV template built with **Typst**.

## 1. Clone the Project
Open your terminal and run:
```bash
git clone https://github.com/hoangf384/lazycv.git
cd lazycv
```

## 2. Setup & Usage

### Option A: Using VS Code (Recommended)
This works with official **VS Code** or forks like **Cursor**, **VSCodium**, etc.

1. Open the folder in your editor: `code .`
2. If prompted to **"Reopen in Container"**, click it. (Requires Docker and the *Dev Containers* extension).
3. Once the container is ready, open `template.typ`.
4. The **Tinymist Typst** extension is pre-configured to show a live preview.

### Option B: Local Setup
If you prefer not to use Docker:
1. Install Typst from [typst.app](https://github.com/typst/typst).
2. Compile the PDF:
   ```bash
   typst compile template.typ
   ```
3. Watch for changes (auto-update PDF on save):
   ```bash
   typst watch template.typ
   ```

## 3. Customization
1. Open `template.typ`.
2. Replace the placeholder text inside the brackets `[...]` with your own information.
3. Save the file to see your updated CV instantly.

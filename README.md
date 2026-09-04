# Maomao Codex Pet

An unofficial animated custom pet inspired by Maomao from *The Apothecary Diaries*, created for Codex on Windows and macOS.

> A clever chibi apothecary pet with dark teal hair, green hanfu robes, and a curious love of herbs and poisons.

## Features

- Codex Pets v2 format (`spriteVersionNumber: 2`)
- `1536 × 2288` RGBA WebP spritesheet
- `192 × 208` cells arranged in an `8 × 11` grid
- Nine standard animation states
- Sixteen pointer-following look directions
- Tested on Windows with 200% display scaling

## Installation

> The `1536 × 2288` v2 spritesheet in this repository is intended for local custom pets in the Codex desktop app. It is not the same format as the **Upload pet** feature on ChatGPT web.

### Windows

#### Quick install with PowerShell

```powershell
git clone https://github.com/h4vrut4/Maomao-Codex-Pet.git
cd Maomao-Codex-Pet
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

#### Manual installation from ZIP

1. On GitHub, select **Code → Download ZIP**, then extract the archive.
2. Copy `pet.json` and `spritesheet.webp` into the following folder:

```text
%USERPROFILE%\.codex\pets\maomao-kusuriya\
├── pet.json
└── spritesheet.webp
```

### macOS

> These instructions follow the local Codex Pets package format, but they have not yet been tested on a Mac.

#### Quick install in Terminal

```sh
git clone https://github.com/h4vrut4/Maomao-Codex-Pet.git
cd Maomao-Codex-Pet

pet_dir="${CODEX_HOME:-$HOME/.codex}/pets/maomao-kusuriya"
mkdir -p "$pet_dir"
cp -f ./pet.json ./spritesheet.webp "$pet_dir/"
```

You do not need `sudo`. Unless you have set a custom `CODEX_HOME`, the default installation path is `~/.codex/pets/maomao-kusuriya`.

#### Manual installation with Finder

1. On GitHub, select **Code → Download ZIP**, then extract the archive.
2. In Finder, press `Shift-Command-G` and enter `~/.codex/pets`.
3. Create a folder named `maomao-kusuriya`, then copy `pet.json` and `spritesheet.webp` into it.

```text
~/.codex/pets/maomao-kusuriya/
├── pet.json
└── spritesheet.webp
```

If you use a custom `CODEX_HOME`, replace `~/.codex` with that path. Finder does not automatically expand the literal `$CODEX_HOME` variable in its path field.

### Enable Maomao in Codex

1. Open **Settings → Pets**.
2. Select **Refresh custom pets** or **Refresh**.
3. Choose **Maomao** from the list.
4. Enter `/pet` in the chat box to wake the pet.

Custom pets are stored locally on each computer. They do not automatically sync through ChatGPT web or between devices.

## Updating

### Windows

From the cloned repository folder, run:

```powershell
git pull
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### macOS

From the cloned repository folder, run:

```sh
git pull --ff-only

pet_dir="${CODEX_HOME:-$HOME/.codex}/pets/maomao-kusuriya"
mkdir -p "$pet_dir"
cp -f ./pet.json ./spritesheet.webp "$pet_dir/"
```

## Troubleshooting

### Windows: The pet cannot be clicked or dragged

Maomao was tested on Windows with 200% display scaling. At other scale factors—or when using multiple monitors with different scale settings—the visible pet and its clickable area may become misaligned.

A [known Codex Desktop issue](https://github.com/openai/codex/issues/42289) describes pets appearing normally while clicks and drag gestures pass through to the window underneath, particularly at 150% scaling.

This repository contains only the pet assets. The `pet.json` format does not provide an option for correcting display scaling or hit-box coordinates. Try the following checks before changing compatibility settings or modifying the registry:

1. Make sure Codex Desktop is up to date.
2. Focus the main Codex window and press `Ctrl+0` to reset the app's internal zoom. This does not change Windows display scaling.
3. Open **Settings → Pets → Tuck Away Pet**, select **Refresh custom pets**, choose Maomao again, and enter `/pet`.
4. Fully quit Codex, including any remaining tray or Task Manager process, then reopen it on the monitor where you plan to use the pet.
5. If you use multiple monitors, temporarily use one monitor or set every monitor to the same scale under **Windows Settings → System → Display**, then restart Codex.
6. As a diagnostic test, set the target monitor to **200%**, the scale at which this pet was tested, and restart Codex completely. If clicking works at 200%, the likely cause is the interaction between Windows scaling and the Codex pet overlay rather than the Maomao assets.
7. Test one of the built-in pets:
   - If built-in pets also cannot be clicked, the problem is likely related to Codex Desktop or Windows display scaling.
   - If only Maomao is affected, run `install.ps1` again and select **Refresh custom pets**.

If you need to keep your original display scale, check the linked issue for updates. You can also contact [OpenAI Codex support](https://help.openai.com/en/articles/11369540) and include your Codex version, Windows scale, monitor layout, scale setting for each monitor, and whether the issue also affects built-in pets.

Overriding Windows high-DPI behavior, editing the registry, or patching application files are not official fixes and are not recommended by this repository.

### macOS: The pet does not appear or animate

1. Make sure `pet.json` and `spritesheet.webp` are directly inside `maomao-kusuriya`, without an extra nested folder.
2. Open **Settings → Pets → Refresh custom pets**, then select Maomao again.
3. If it still does not appear, finish any active work, quit the app completely with `Command-Q`, and reopen it.
4. If the pet appears as a static image, check **System Settings → Accessibility → Display → Reduce Motion**. When Reduce Motion is enabled, pets may use a static frame instead of sprite animation.

See the [OpenAI Pets documentation](https://learn.chatgpt.com/docs/pets) for instructions on selecting, hiding, and waking pets.

## Built With

Created with OpenAI Codex and image generation, including character sprite creation, animation assembly, iterative motion refinement, and Codex Pets v2 validation.

This repository contains only the custom pet assets and an installation helper. It does not include or modify the Codex Desktop application.

## Disclaimer

This is an unofficial, non-commercial fan project. It is not affiliated with or endorsed by the original creators, publishers, animation production committee, or OpenAI.

Maomao and *The Apothecary Diaries* belong to their respective rights holders. This pet is intended for personal use only.

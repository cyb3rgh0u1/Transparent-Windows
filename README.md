# Transparent-Windows
This AutoHotkey script is a neat little tool that makes all new windows on your Windows PC slightly transparent (at a level of 220 out of 255). It skips stuff like minimized windows, the desktop, or the taskbar, so they stay unaffected. The script runs quietly in the background, checking for new windows every half-second.

## Cool Features
- Auto Transparency: Slaps a nice 220/255 transparency on new windows that qualify.
- Skips the Boring Stuff: Ignores minimized windows, system windows (like `Program Manager`), or windows with no title.
- Always On: Runs in the background until you tell it to stop.

## Previews
Wanna see it in action? Check out these screenshots:

![demo](./previews/Transparent_Windows.png)

![demo2](./previews/transparent_browser.png)

## What You Need

- Operating System: Any Windows version.
- Software: AutoHotkey v2 – grab it from their [official site](https://www.autohotkey.com/).

## Make It Run at Startup
Want your windows to be transparent every time you boot up? Easy:

- Press Win + R, type `shell:startup`, and hit `Enter`. This opens your Startup folder.
- Copy the `window_transparency.ahk` file (or a shortcut to it) into that folder.
- Restart your PC, and boom – new windows will automatically get that transparent vibe.

## How to Use It

If you’re not using the startup trick, just double-click the .ahk file to launch it. The script kicks in and makes new windows transparent.

To stop it, find the AutoHotkey icon in your system tray (bottom-right corner), right-click, and hit `Exit`.

## How to Stop It Completely

### Remove from Startup:
Press `Win + R`, type shell:startup, and hit `Enter`.
Find and delete the `window_transparency.ahk` file or its shortcut from the Startup folder.
### Uninstall AutoHotkey (if you want):
Go to `Control Panel > Programs > Uninstall a Program`.
Find AutoHotkey, click it, and select `Uninstall`. Follow the steps to remove it.

Or, just pause it temporarily by right-clicking the system tray icon and choosing `Suspend Hotkeys`.

## Customization:

- Change Transparency: Tweak the 220 in WinSetTransparent 220, `ahk_id` thisWindow to any value from `0` (invisible) to `255` (solid).
- Check Frequency: Adjust the 500 in SetTimer CheckNewWindows, 500 to make it check more or less often (it’s in milliseconds).

## License
This script is free to use and tweak, shared under the [MIT License](https://github.com/cyb3rgh0u1/Transparent-Windows/blob/main/LICENSE). No warranties, just good vibes!

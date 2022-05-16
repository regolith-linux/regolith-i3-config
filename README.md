# regolith-i3-config

This repo is for Regolith-specific configuration for i3wm and variants.

## Partials

The following contains a list of all i3 configuration packages provided by files in the `partials/` directory:

| Package                      | File | Function          |
|------------------------------|------|-------------------|
| regolith-i3-base-launchers   | 15_base_launchers | Launch terminal and browser | 
| regolith-i3-compositor       | 80_compositor  | Compositor integration (delegates to `regolith-compositor-<variant>`) |
| regolith-i3-default-style    | 40_default-style | Window behavior |
| regolith-i3-ftue             | 84_ftue | First time user experience |
| regolith-i3-gaps-partial     | 35_i3-gaps | `i3-gaps` configuration (if installed, i3-gaps will replace i3) |
| regolith-i3-gnome            | 60_config_keybindings | Regolith Settings keybindings |
| regolith-i3-i3xrocks         | 70_bar | i3 bar status indicators configuration |
| regolith-i3-ilia             | 20_ilia | `ilia` integration |
| regolith-i3-navigation       | 30_navigation | Navigation keybindings |
| regolith-i3-networkmanager   | 88_network-manager | `network-manager` integration |
| regolith-i3-next-workspace   | 40_next-workspace | Auto create next workspace feature |
| regolith-i3-remontoire       | 45_remontoire | Legacy keybindings view integration |
| regolith-i3-resize           | 50_resize-mode | Resize keybindings |
| regolith-i3-rofi             | 20_rofi | Legacy desktop launcher integration |
| regolith-i3-rofication       | 82_rofication | Legacy notification viewer integration |
| regolith-i3-rofication-ilia  | 82_rofication-ilia | Notification viewer integration |
| regolith-i3-session          | 55_session_keybindings | Session keybindings |
| regolith-i3-snapshot         | 75_i3-snapshot  | i3 workspace persistence|
| regolith-i3-unclutter        | 86_unclutter | Hides mouse when not in use |
| regolith-i3-user-programs    | 90_user-programs | Optionally launch user programs specified in Xresources |
| regolith-i3-workspace-config | 40_workspace-config | Workspace keybindings |

## Config Loading

The primary i3 config file resides at `/etc/regolith/i3/config`.  Mainly, it sets up variables for use in the partials listed above.  At the bottom of the file, there are two lines that will cause more configuration elements to be loaded if they exist:

```
# Include any regolith i3 partials
include /usr/share/regolith/i3/config.d/*

# Include any user i3 partials
include $HOME/.config/regolith2/i3/config.d/*
```

The first directory is used by Debian packages to add or remove i3 configuration.  This is where official Regolith i3 config partials are installed into.  The second directory is intended for user partials: `~/.config/regolith2/i3/config.d/`.  Any files located in this directory will be treated as snippets of i3 configuration.

## Replacing Default i3 Config Logic

In many cases, configuration can be tuned to user preference simply by providing Xresource override values into `~/.config/regolith2/Xresources`.  However larger changes may require deeper changes to the i3 config file.  To best support getting upstream updates for bug fixes and new features while also being able to make bigger changes to config, the following procedure is recommended:

1. Find the partial that contains the config element(s) that are to be changed.
2. Copy the partials from the `/usr` directory into the user directory.  (eg `cp /usr/share/regolith/i3/config.d/50_resize-mode ~/.config/regolith2/i3/config.d/`)
3. Remove the default configuration (to prevent conflicts) via apt.  (eg `sudo apt remove regolith-i3-resize`)
4. Update the copied configuration files as desired.
5. Refresh i3 or log back in

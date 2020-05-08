#!/bin/bash
KEYS_GNOME_WM=/org/gnome/desktop/wm/keybindings
KEYS_GNOME_SHELL=/org/gnome/shell/keybindings
KEYS_MUTTER=/org/gnome/mutter/keybindings
KEYS_MEDIA=/org/gnome/settings-daemon/plugins/media-keys


dconf write ${KEYS_GNOME_SHELL}/switch-to-application-1 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-2 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-3 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-4 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-5 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-6 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-7 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-8 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-9 "@as []"
dconf write ${KEYS_GNOME_SHELL}/toggle-message-tray "['<Alt>h']"
dconf write ${KEYS_GNOME_SHELL}/toggle-overview "@as []"
dconf write ${KEYS_GNOME_SHELL}/open-application-menu "@as []"

dconf write ${KEYS_GNOME_VM}/close "['<Super>q']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-1 "['<Super>F1']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-10 "['<Super>F10']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-2 "['<Super>F2']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-3 "['<Super>F3']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-4 "['<Super>F4']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-5 "['<Super>F5']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-6 "['<Super>F6']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-7 "['<Super>F7']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-8 "['<Super>F8']"
dconf write ${KEYS_GNOME_VM}/move-to-workspace-9 "['<Super>F9']"
dconf write ${KEYS_GNOME_VM}/switch-input-source "['<Alt><Super>BackSpace']"
dconf write ${KEYS_GNOME_VM}/switch-input-source-backward "['<Shift><Alt><Super>BackSpace']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-1 "['<Super>1']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-2 "['<Super>2']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-3 "['<Super>3']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-4 "['<Super>4']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-5 "['<Super>5']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-6 "['<Super>6']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-7 "['<Super>7']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-8 "['<Super>8']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-9 "['<Super>9']"
dconf write ${KEYS_GNOME_VM}/switch-to-workspace-10 "['<Super>0']"
dconf write ${KEYS_GNOME_VM}/toggle-fullscreen "['<Super>f']"

# Disable tiling to left / right of screen
dconf write ${KEYS_MUTTER}/toggle-tiled-left "@as []"
dconf write ${KEYS_MUTTER}/toggle-tiled-right "@as []"

# Lock screen
dconf write ${KEYS_MEDIA}/screensaver "['<Super>Escape']"
# Home folder
dconf write ${KEYS_MEDIA}/home "['<Super>h']"
# Launch email client
dconf write ${KEYS_MEDIA}/email "@as []"
# Launch web browser
dconf write ${KEYS_MEDIA}/www "@as []"
# Rotate Video Lock
dconf write ${KEYS_MEDIA}/rotate-video-lock-static "@as []"

cat dconfcustomkeys.ini | dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings
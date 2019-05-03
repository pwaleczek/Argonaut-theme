#! /bin/sh

# Create a new profile using the argonaut theme for gnome terminal and make it the default.
# For newer versions of gnome terminal using dconf.

path=/org/gnome/terminal/legacy/profiles:
uuid="$(uuidgen)"

dconf load "$path/:$uuid/" <<'EOF'
[/]
visible-name='Argonaut'
use-theme-colors=false
use-theme-background=false
foreground-color='#FFFFFAFFF499'
background-color='#135515C822FB'
bold-color='#9E9B9C2A9A3A'
palette=['#22C022C022C0', '#FFFF00000F12', '#8C9DE1C30A8E', '#FFFFB9FF0000', '#00008E07F911', '#6CF6435DA687', '#0000D882EC2E', '#FFFFFFFFFFFF', '#445744574457', '#FFFF279A3FCD', '#ABD7E1C35B40', '#FFFFD2A34206', '#002292C3FFFF', '#9AE35FC9EC4D', '#6779FFFFF0E1', '#FFFFFFFFFFFF']
EOF

profileList="$(dconf read "$path/list" | tr -d ']'),'$uuid']"
dconf write "$path/list" "$profileList"
dconf write "$path/default" "'$uuid'"

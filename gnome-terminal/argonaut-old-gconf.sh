#!/usr/bin/env bash

# Load configuration for old versions of gnome terminal using gconf

gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/palette "#22C022C022C0:#FFFF00000F12:#8C9DE1C30A8E:#FFFFB9FF0000:#00008E07F911:#6CF6435DA687:#0000D882EC2E:#FFFFFFFFFFFF:#445744574457:#FFFF279A3FCD:#ABD7E1C35B40:#FFFFD2A34206:#002292C3FFFF:#9AE35FC9EC4D:#6779FFFFF0E1:#FFFFFFFFFFFF"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/background_color "#135515C822FB"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/foreground_color "#FFFFFAFFF499"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/bold_color "#9E9B9C2A9A3A"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/bold_color_same_as_fg "false"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/use_theme_colors "false"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/use_theme_background "false"

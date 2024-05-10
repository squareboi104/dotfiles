# Start Xorg with startx (dwm build)

# Start the status bar
slstatus &

# Wallpaper
feh --bg-scale ~/.wallpapers/fuji/fuji_blue.png

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

# Xresources for urxvt
xrdb ~/.Xresources

# Notifications
dunst &

# Autostart progs
#telegram-desktop &

# Transparency/Compositor
#xcompmgr &

# Start Xorg server
exec dwm

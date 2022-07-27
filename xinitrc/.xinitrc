# Start Xorg with startx (use only for my dwm build)

# Start the status bar
slstatus &

# Wallpaper
#nitrogen --restore &
#variety &
#$HOME/.wallpapers/zt_meteor/wallpp
#xwallpaper --focus ~/.wallpapers/nightcity_neon.png
feh --bg-scale ~/.wallpapers/samurais/samurai_crow.jpg

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

# Xresources for urxvt
xrdb ~/.Xresources

# Notifications
dunst &

# Autostart progs
#discord &
#telegram-desktop &

# Transparency/Compositor
#xcompmgr &

# Rofi
#export LC_ALL="C" &

# Start Xorg server
exec dwm
#exec qtile

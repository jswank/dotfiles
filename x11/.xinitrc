xrdb -merge ${HOME}/.Xresources
xmodmap ${HOME}/.Xmodmap
xset -b
/home/jswank/bin/dual-monitor &
# /usr/lib/notification-daemon-1.0/notification-daemon &
# /home/jswank/bin/new-mail-notification &
mpd &
exec i3

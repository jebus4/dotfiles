xset -b
xset m 0 0
setxkbmap gb
mpd ~/.mpd/config &
urxvtd -q -f -o &
exec ratpoison

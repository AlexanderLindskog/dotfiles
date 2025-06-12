cd

# Input settings
xinput set-prop "ELAN0634:00 04F3:3124 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "ELAN0634:00 04F3:3124 Touchpad" "libinput Natural Scrolling Enabled" 1

# Set monitor dim to 30 minutes
xset s 1800 1800
xset dpms 1800 1800 1800

session=${1:-dwm}
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

case $session in
    i3)
        exec i3
        ;;
    dwm) 
        export _JAVA_AWT_WM_NONREPARENTING=1
        $HOME/.config/dwm/dwmstatus inf &
        exec dwm
        ;;
    # No known session, try to run it as command
    *)
        exec $1
        ;;
esac


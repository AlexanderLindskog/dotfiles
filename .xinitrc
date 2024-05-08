cd

# Set touchpad (11) property tapping (325) on (1)
xinput set-prop 11 325 1

# Set monitor dim to 30 minutes
xset s 1800 1800
xset dpms 1800 1800 1800

export _JAVA_AWT_WM_NONREPARENTING=1
exec dwm


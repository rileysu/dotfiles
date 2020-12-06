#Set environment
export MOZ_ENABLE_WAYLAND=1
export ANDROID_SDK_ROOT=/opt/android-sdk

#Start user session for dbus
dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/bus &

#Execute sway
sway

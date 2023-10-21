#!/bin/bash
#
# Clean-up Xiaomi smartphone without rooting:
#
# 1) You have to install adb tool from android sdk
# 2) You have to activate developer options, next activate usb debugging
# 3) Comment out or delete lines with packages, if you really need them
# 4) Optional: I highly recommend activating OEM unlocking feature in developer options.
#              It doesn't unlock your device immediately, but in case of breaking your phone
#                you will have an opportunity to unlock your phone and reflash it via MiFlash.
#              After a successful clean-up and rebooting your phone, you should deactivate
#                unlocking feature to protect your device.
# 5) Connect your phone, open shell, and type 'adb devices' to check your phone connection via adb.
#      If you see your device in the list, then go to the next step.
# 6) Run the script
# 7) Reboot phone
# 8) Disable developer options if you don't need them

# List of packages to uninstall (put your Python list here)
packages=(
"com.amazon.appmanager"
"com.android.thememanager"
"com.android.wallpaper.livepicker"
"com.facebook.appmanager"
"com.facebook.services"
"com.milink.service"
"com.miui.bugreport"
"com.miui.hybrid"
"com.miui.hybrid.accessory"
"com.miui.micloudsync"
"com.miui.miservice"
"com.miui.miwallpaper"
"com.miui.screenrecorder"
"com.miui.touchassistant"
"com.xiaomi.account"
"com.xiaomi.discover"
"com.xiaomi.xmsf"
)

# Loop through the list of packages and uninstall them
for package in "${packages[@]}"
do
  echo -n "Uninstalling $package... "
  adb shell pm uninstall --user 0 "$package"
done

# Optional: Add more packages to uninstall if needed
# Example:
# adb shell pm uninstall --user 0 com.example.package

# Optional: Reboot your phone after uninstalling
# adb reboot

# Optional: Disable developer options if needed
# adb shell settings put global development_settings_enabled 0

# ADB Uninstall Bloatware

## Prerequisites for Xiaomi Phones

Before you begin, ensure that you have the following prerequisites specific to Xiaomi phones:

1. **Unlocking Bootloader:** Some Xiaomi devices may require you to unlock the bootloader before you can use ADB for certain tasks. Unlocking the bootloader can void your warranty, and the process can vary from one Xiaomi device to another. Check Xiaomi's official website for instructions specific to your device.

2. **Mi Unlock Tool:** If you need to unlock the bootloader, you'll often require Xiaomi's official Mi Unlock Tool. Download it from Xiaomi's official website and follow the provided instructions.

## Steps to Uninstall Bloatware on Xiaomi Phones

Once you've addressed the Xiaomi-specific prerequisites, you can proceed with the steps to uninstall bloatware:

1. **Connect your Xiaomi device to your computer:** Use a USB cable to connect your Xiaomi phone to your computer.

2. **Enable Developer Options and USB Debugging:** On your Xiaomi device, go to **Settings > About Phone** and tap on the "MIUI Version" multiple times until it enables Developer Options. Then, in **Settings > Additional Settings > Developer Options**, enable "USB Debugging."

3. **Unlock the Bootloader (if necessary):** If your Xiaomi phone requires an unlocked bootloader, follow the official Xiaomi instructions to unlock it.

4. **Open a Command Prompt or Terminal:** On your computer, open a command prompt (Windows) or terminal (macOS and Linux).

5. **Navigate to the ADB directory:** Use the `cd` command to navigate to the directory where you have ADB installed or the Mi Unlock Tool if you're required to use it.

6. **Check if ADB recognizes your Xiaomi device:** Run the following command to check if ADB recognizes your Xiaomi device:

   ```shell
   adb devices
   ```

   If your device is listed, you're ready to proceed. If not, ensure USB debugging is enabled, and your device is connected properly.

7. **List installed packages:** To see a list of all installed packages on your Xiaomi device, use the following command:

   ```shell
   adb shell pm list packages
   ```

   This command will generate a list of package names. You can search through this list to find the package names of the bloatware apps you want to uninstall.

8. **Uninstall the bloatware:** To uninstall a specific bloatware app, use the `pm uninstall` command followed by the package name. For example:

   ```shell
   adb shell pm uninstall --user 0 com.example.bloatware
   ```

   Replace `com.example.bloatware` with the package name of the app you want to uninstall. Be cautious and double-check the package name before proceeding.

9. **Repeat step 8 for other bloatware apps:** If you want to uninstall multiple apps, repeat the `pm uninstall` command for each app.

10. **Reboot your Xiaomi device:** After uninstalling bloatware, it's a good idea to reboot your Xiaomi phone to ensure that everything is functioning correctly.

## Caution

As mentioned in the general README, be extremely careful when uninstalling apps using ADB, as removing system apps or critical components can lead to an unstable or unusable device. Always make sure you are uninstalling only the bloatware apps you don't need.

Remember that these instructions are intended for educational purposes, and you should use them responsibly and at your own risk. Make sure to back up your device's data before attempting any modifications.

**Note:** Xiaomi's policies and device-specific requirements may change, so always refer to official Xiaomi documentation or forums for the most up-to-date information on unlocking bootloaders and using ADB on Xiaomi devices.

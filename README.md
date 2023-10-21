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

Certainly, here's a troubleshooting section to address the scenario where someone accidentally uninstalls an important service and needs to reinstall it using the provided commands:

## Troubleshooting: Reinstalling an Important Service

If you have accidentally uninstalled an important system service or app and need to reinstall it using ADB, follow these steps:

1. **Check If the Package Is Uninstalled:**

   First, make sure that the package you want to reinstall is indeed uninstalled. You can check the package's presence using the `pm list packages` command in ADB.

   ```shell
   adb shell pm list packages | grep com.example.important
   ```

   Replace `com.example.important` with the actual package name of the service or app you want to reinstall. If it returns no results, the package is uninstalled.

2. **Download the APK File:**

   You'll need the APK file of the service or app you want to reinstall. Ensure that you have a reliable source to obtain the correct APK for your device's version.

3. **Transfer the APK to Your Device:**

   Transfer the downloaded APK to your Android device using a file transfer method of your choice, such as emailing it to yourself, using a file manager app, or using cloud storage.

4. **Install the APK:**

   Use the following command to install the APK on your device:

   ```shell
   adb install -r -d --user 0 /path/to/your-app.apk
   ```

   Replace `/path/to/your-app.apk` with the actual path to the APK file on your device. The `-r` option is used to replace an existing APK, and the `-d` option is used to allow the installation on a downgraded version of the app.

5. **Reboot Your Device:**

   After the installation, it's recommended to reboot your device to ensure that the service or app functions correctly.

6. **Verify the Reinstalled Service:**

   After rebooting, ensure that the reinstalled service or app is working as expected. If it's a critical system service, make sure that it hasn't caused any instability on your device.

## Caution

Reinstalling a service or app in this manner should be approached with caution. If you're reinstalling a system service, ensure that you are using the correct APK for your specific device and Android version. Incorrectly reinstalling system services can lead to issues or even require a factory reset to resolve.

Always make backups of your important data and settings before making significant changes to your Android device.

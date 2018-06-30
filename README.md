Universal device configuration for the Moto G (falcon)
===============================

* Copyright 2016 - The CyanogenMod Project
* Copyright (C) 2017-2018 The LineageOS Project

# Working
* Boots
* Wifi
* Bluetooth
* Camera & Video Recording
* Video Playback
* Audio (Record and Playback)
* Flash
* Led
* GPS

# Not Working
* RIL (Calls, SMS, Data)
* HDR (Camera)
* SELinux is permissive
* Secure Screen Lock

# Required Repository for device
* Device tree - https://github.com/immortalyash/android_device_motorola_falcon
* Common device tree - https://github.com/immortalyash/android_device_motorola_msm8226-common-1
* Kernel - https://github.com/RenanQueiroz/android_kernel_motorola_msm8226 -b oreo-m2
* Vendor tree - https://github.com/falcon-oreo/proprietary_vendor_motorola

# Compiling from source

Initialize environment
```
source build/envsetup.sh
```

Since the device isn't supported officially by LineageOS 15.1 use lunch instead of breakfast
```
lunch lineage_falcon-userdebug
```
**Note -** use user flag instead of userdebug flag at the end for production release only

Start Compiling
```
brunch lineage_falcon-userdebug
```

# Compilation Bugs
* Locadlocale error (Due to use of Ubuntu 18.04)
  ```
  loadlocale.c:130: _nl_intern_locale_data: Assertion `cnt < (sizeof (_nl_value_type_LC_TIME) / sizeof (_nl_value_type_LC_TIME[0]))' failed.
  ```
  Fix: Paste in terminal before compiling
  ```
  export LC_ALL=C
  ```

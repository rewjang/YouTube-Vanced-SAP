
adb devices

*******************************************************************************************

adb install          -r Vanced.MicroG.apk  
adb install-multiple -r dark.apk split_config.arm64_v8a.apk split_config.en.apk  

*******************************************************************************************

adb uninstall com.vanced.android.youtube  
adb uninstall com.mgoogle.android.gms  

adb shell pm uninstall -k com.vanced.android.youtube  
adb shell pm uninstall -k com.mgoogle.android.gms

*******************************************************************************************

Install  
-r: Reinstall an existing app, keeping its data.  
-d: Allow version code downgrade.  

Uninstall   
-k: Keep the data and cache directories around after package removal. Same signature only.  

*******************************************************************************************

adb: failed to finalize session  
Failure [INSTALL_FAILED_USER_RESTRICTED: Install canceled by user]  

*******************************************************************************************

Fix INSTALL_FAILED_USER_RESTRICTED error in MIUI 12.x  

WIFI = Off  
Mobile Data = On  
USB debugging = On  
Install via USB = On  

*******************************************************************************************


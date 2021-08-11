

set G=0.2.21.212417
set V=16.29.39


@echo.
@echo.
@echo =======================================================
@echo.
@echo Fix [INSTALL_FAILED_USER_RESTRICTED] error in MIUI 12.x
@echo.
@echo =======================================================
@echo.
@echo WIFI = Off
@echo Mobile Data = On
@echo USB debugging = On
@echo Install via USB = On
@echo.
@echo =======================================================
@echo.
@echo.


@pause

adb devices

@pause

adb install          -r  Vanced.MicroG\Vanced.MicroG.%G%.apk
adb install-multiple -r  Youtube.Vanced\v%V%\nonroot\Arch\split_config.arm64_v8a.apk  Youtube.Vanced\v%V%\nonroot\Language\split_config.en.apk Youtube.Vanced\v%V%\nonroot\Theme\dark.apk

@pause



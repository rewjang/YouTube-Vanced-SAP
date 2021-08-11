

set version=v16.29.39


set home=D:\pic\FIFA Mobile\git\YouTube-Vanced-SAP
set dir=%home%\Youtube.Vanced\%version%\nonroot


set file1=YouTube_Vanced_%version%_nonroot_en_th_arm64_v8a_black_Sappurit
set file2=YouTube_Vanced_%version%_nonroot_en_th_arm64_v8a_dark_Sappurit
set file3=YouTube_Vanced_%version%_nonroot_en_th_armeabi_v7a_black_Sappurit
set file4=YouTube_Vanced_%version%_nonroot_en_th_armeabi_v7a_dark_Sappurit


zip -9 -j  "%file1%.zip"  "%dir%\Language\split_config.en.apk"  "%dir%\Language\split_config.th.apk"  "%dir%\Arch\split_config.arm64_v8a.apk"    "%dir%\Theme\black.apk"
zip -9 -j  "%file2%.zip"  "%dir%\Language\split_config.en.apk"  "%dir%\Language\split_config.th.apk"  "%dir%\Arch\split_config.arm64_v8a.apk"    "%dir%\Theme\dark.apk"
zip -9 -j  "%file3%.zip"  "%dir%\Language\split_config.en.apk"  "%dir%\Language\split_config.th.apk"  "%dir%\Arch\split_config.armeabi_v7a.apk"  "%dir%\Theme\black.apk"
zip -9 -j  "%file4%.zip"  "%dir%\Language\split_config.en.apk"  "%dir%\Language\split_config.th.apk"  "%dir%\Arch\split_config.armeabi_v7a.apk"  "%dir%\Theme\dark.apk"


echo off
echo.
echo.
echo ----------------------------------------------------------
echo DO NOT close these windows !!!
echo Build all your projects with SAP one by one.
echo Close SAP to continue the next loop.
echo When finished, it will automatically rename all APK files.
echo ----------------------------------------------------------


FOR /L %%G IN (1,1,4) DO (
	echo.
	echo Loop : %%G of 4
	start /wait "" "%home%\Split.APKs.Packer\sap.exe"
)


pause


if exist "%file1%_SAP_Project\build\YouTube_*_SAP.apk"  ( move /y  "%file1%_SAP_Project\build\YouTube_*_SAP.apk"  "%file1%.apk" )
if exist "%file2%_SAP_Project\build\YouTube_*_SAP.apk"  ( move /y  "%file2%_SAP_Project\build\YouTube_*_SAP.apk"  "%file2%.apk" )
if exist "%file3%_SAP_Project\build\YouTube_*_SAP.apk"  ( move /y  "%file3%_SAP_Project\build\YouTube_*_SAP.apk"  "%file3%.apk" )
if exist "%file4%_SAP_Project\build\YouTube_*_SAP.apk"  ( move /y  "%file4%_SAP_Project\build\YouTube_*_SAP.apk"  "%file4%.apk" )

if exist "%file1%_SAP_Project"                          ( rd  /q /s  "%file1%_SAP_Project" )
if exist "%file2%_SAP_Project"                          ( rd  /q /s  "%file2%_SAP_Project" )
if exist "%file3%_SAP_Project"                          ( rd  /q /s  "%file3%_SAP_Project" )
if exist "%file4%_SAP_Project"                          ( rd  /q /s  "%file4%_SAP_Project" )

if exist "%file1%.zip"                                  ( del /q /f  "%file1%.zip"         )
if exist "%file2%.zip"                                  ( del /q /f  "%file2%.zip"         )
if exist "%file3%.zip"                                  ( del /q /f  "%file3%.zip"         )
if exist "%file4%.zip"                                  ( del /q /f  "%file4%.zip"         )


pause



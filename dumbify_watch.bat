@echo off
echo --------------------------------------------------------
echo  GALAXY WATCH DUMBIFIER - ONE UI 8 BATTERY FIX
echo --------------------------------------------------------
echo  WARNING: This kills Sensors, Bixby, Alarms and Calendar.
echo  Notifications and Calls WILL still work.
echo --------------------------------------------------------
pause

echo [+] Muzzling Google Play Services (Wakelock Fix)...
adb shell cmd appops set com.google.android.gms WAKE_LOCK ignore
adb shell am set-standby-bucket com.google.android.gms restricted
adb shell pm revoke com.google.android.gms android.permission.BODY_SENSORS
adb shell pm revoke com.google.android.gms android.permission.ACTIVITY_RECOGNITION
adb shell pm revoke com.google.android.gms android.permission.ACCESS_FINE_LOCATION

echo [+] Removing Bloatware...
:: Bixby junk
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.wakeup
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.service
adb shell pm uninstall -k --user 0 com.samsung.android.intellivoiceservice

:: Health stuff
adb shell pm uninstall -k --user 0 com.samsung.android.wear.shealth
adb shell pm uninstall -k --user 0 com.samsung.android.shealthmonitor
adb shell pm uninstall -k --user 0 com.google.android.wearable.healthservices
adb shell pm uninstall -k --user 0 com.sec.android.easyMover

:: Useless apps
adb shell pm uninstall -k --user 0 com.google.android.wearable.assistant
adb shell pm uninstall -k --user 0 com.samsung.android.samsungpay.gear
adb shell pm uninstall -k --user 0 com.samsung.android.app.reminder
adb shell pm uninstall -k --user 0 com.samsung.android.watch.weather
adb shell pm uninstall -k --user 0 com.samsung.android.wearable.music
adb shell pm uninstall -k --user 0 com.samsung.android.wear.musictransfer
adb shell pm uninstall -k --user 0 com.samsung.android.gallery.watch
adb shell pm uninstall -k --user 0 com.samsung.android.calendar
adb shell pm uninstall -k --user 0 com.samsung.android.watch.compass
adb shell pm uninstall -k --user 0 com.samsung.android.watch.worldclock
adb shell pm uninstall -k --user 0 com.samsung.android.watch.timer
adb shell pm uninstall -k --user 0 com.samsung.android.watch.alarm
adb shell pm uninstall -k --user 0 com.samsung.android.watch.budscontroller
adb shell pm uninstall -k --user 0 com.samsung.android.wear.smartswitchassistant
adb shell pm uninstall -k --user 0 com.samsung.android.app.find
adb shell pm uninstall -k --user 0 com.samsung.android.watch.batterytile
adb shell pm uninstall -k --user 0 com.samsung.android.watch.selfdiagnostics

:: System bloat
adb shell pm uninstall -k --user 0 com.sec.android.diagmonagent
adb shell pm uninstall -k --user 0 com.samsung.android.aircommandmanager
adb shell pm uninstall -k --user 0 com.sec.android.app.samsungapps
adb shell pm uninstall -k --user 0 com.samsung.android.wearable.setupwizard
adb shell pm uninstall -k --user 0 com.samsung.android.wear.blockednumber
adb shell pm uninstall -k --user 0 com.sec.android.app.felicatest
adb shell pm uninstall -k --user 0 com.wssyncmldm
adb shell pm uninstall -k --user 0 com.sec.android.soagent
adb shell pm uninstall -k --user 0 com.samsung.android.cidmanager
adb shell pm uninstall -k --user 0 com.samsung.android.dqagent

echo [+] Disabling animations (0x)...
adb shell settings put global window_animation_scale 0.0
adb shell settings put global transition_animation_scale 0.0
adb shell settings put global animator_duration_scale 0.0
adb shell pm trim-caches 999999999999999999

echo [+] Rebooting...
adb reboot
echo Done.
pause

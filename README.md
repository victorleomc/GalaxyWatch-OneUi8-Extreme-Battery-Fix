# Galaxy Watch "Dumbifier" Script (One UI 8)
Fed up with my Galaxy Watch draining battery in less than 24h on One UI 8, 
mainly caused by Google Play Services going rogue in the background.

I decided to nuke everything non-essential. 
This script turns your Smartwatch into a "Dumbwatch".

##########################################
# Read this first
##########################################

This script makes aggressive changes to the OS. 
Basically, we are removing parts of One UI's brain so it stops wasting energy 
thinking about stuff we don't need.

This isn't a "battery saver" toggle. 
This is a nuclear option!!!!!!!!!!!!!!!!!!!!!!
I wrote this for myself because I only care about *Notifications and Calls.

### What you lose:
- No Sensors: Steps, Heart Rate, Sleep, Stress... all dead.
- No Smart Stuff: Bixby, Google Assistant, Weather, Alarms, Calendar.
- No GPS tracking.

### What you get:
- Notifications work: WhatsApp, Telegram, Emails, 2FA codes come through instantly.
- Calls work: You can answer calls on the watch.
- Insane Battery Life: Since the CPU actually sleeps now.
- The "Wakelock" Fix: I forced the system to ignore Google Play Services wakelocks.

## How to use
You need a PC/Mac and ADB installed.
1) Enable Wireless Debugging on your watch settings (look up a tutorial if you don't know how).
2) Pair it with your computer (`adb pair` / `adb connect`).
3) Run the script for your OS.

## Disclaimer
This script makes system-level changes. 
Use it at your own risk.
If you want to revert the changes (or if you brick the UI),
you will need to perform a Factory Reset using the physical buttons on the watch.

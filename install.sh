#!/system/bin/sh
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true
CLEANSERVICE=true
DEBUG=false
MODDIR=/data/adb/modules

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"


# Set what you want to display when installing your module
print_modname() {
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
ui_print "~ Checking if OLD Ramboost A.I Module is installed"
ui_print "~> Removing it Automatically if that is the case !"
sleep 1.5
if [ -d /data/adb/modules/STRP-RamBoost ]; then
  rm -rf /data/adb/modules/STRP-RamBoost
  ui_print ""
    ui_print "▰ Old Ramboost A.I Module found. Removing it and continuing installation..."
    ui_print ""
    sleep 2
else
ui_print ""
  ui_print "▰ Old Ramboost A.I Module not found. Continuing installation..."
  ui_print ""
  sleep 2
fi
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print "
░██████╗████████╗██████╗░██████╗░
██╔════╝╚══██╔══╝██╔══██╗██╔══██╗
╚█████╗░░░░██║░░░██████╔╝██████╔╝
░╚═══██╗░░░██║░░░██╔══██╗██╔═══╝░
██████╔╝░░░██║░░░██║░░██║██║░░░░░
╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░"
ui_print " "
sleep 1.5
ui_print "
██████╗░░█████╗░███╗░░░███╗███╗░░░███╗
██╔══██╗██╔══██╗████╗░████║████╗░████║
██████╔╝███████║██╔████╔██║██╔████╔██║
██╔══██╗██╔══██║██║╚██╔╝██║██║╚██╔╝██║
██║░░██║██║░░██║██║░╚═╝░██║██║░╚═╝░██║
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝"
ui_print " "
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print " ▌POWERED BY STRAT✪SPHERE "
ui_print " ▌RAMM ▰ Full Autonome RAM Management ▌"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1.5
ui_print ""
  ui_print " ▌UNIVERSAL ▌"
  ui_print " "
  sleep 1
  modpath="/data/adb/modules_update/STRP-RAMMaximizer/"
  ui_print " ▌VERSION ▰ $(grep_prop version "${modpath}module.prop")"
  ui_print " ▌Build Number ▰ $(grep_prop versionCode "${modpath}module.prop")"
  ui_print " ▌CODENAME ▰ RAMM"
  ui_print " ▌DEVICE INFORMATIONS..:"
  sleep 2
  ui_print " ▌MODEL ▰ $(getprop ro.build.product)"
  ui_print " ▌DEVICE ▰ $(getprop ro.product.model)"
  ui_print " ▌BRAND ▰ $(getprop ro.product.system.manufacturer)"
  ui_print " ▌PROCESSOR ▰ $(getprop ro.product.board)"
  ui_print " ▌CPU ▰ $(getprop ro.hardware)"
  ui_print " ▌ANDROID VERSION ▰ $(getprop ro.build.version.release)"
  ui_print " ▌KERNEL ▰ $(uname -r)"
  ui_print " ▌RAM ▰ $(free | grep Mem |  awk '{print $2}')"
  sleep 2
  ui_print " "
  ui_print " ▌Join Android Root Modules Community"
  ui_print " ▌On Telegram For More !!"
ui_print ""
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print ""
ui_print " ▌Create and Placing Time File..."
sleep 1.5
touch /sdcard/#STRP/RAMMaximizer/RAMM-Time.txt
echo "1800" > /sdcard/#STRP/RAMMaximizer/RAMM-Time.txt
ui_print ""
ui_print " ▌Stock Time is set to 30 Minutes (1800)"
sleep 2
ui_print ""
ui_print "╔▌Checking which ARM ur device has..."
sleep 2
ui_print "║"
ui_print "╠▌Your ARM Is ▰ $(getprop ro.product.cpu.abi)"
sleep 1
ui_print "║"
ui_print "╠▌Extracting and Moving files for ▰ $(getprop ro.product.cpu.abi)"
[[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/ramm64.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/ramm32.tar.xz" -C "$MODPATH"
sleep 2.5
ui_print "║"
ui_print "╚══⇒ DONE .. RAMM Daemon Placed Successfully!"
ui_print ""
ui_print " ▌Set Up Important Things Please Wait.."
sleep 2.5
ui_print " ▌Installing..."
pm install $MODPATH/StratosphereToast.apk
ui_print ""
sleep 2
ui_print " ▌Successfully Installed, Dont Forget To Reboot Ur Device!"
ui_print ""
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1.5
ui_print ""
ui_print " ▌Join @AndroidRootModulesCommunity For More Cool Stuff!"
ui_print ""
sleep 2
ui_print " ▌Run 'su -c CT <TIME>' Replace <TIME> with any second amount you like"
sleep 1.5
ui_print " ▌Example, 'su -c CT 300' This will set time to 300 Seconds aka 5 Minutes."
sleep 3
ui_print " ▌RAMM Daemon Made By @CRANKV2 [Telegram]"
ui_print ""
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
ui_print ""
ui_print ""
ui_print ""
}


set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
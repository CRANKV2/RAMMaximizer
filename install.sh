# Set to true if you do *NOT* want Magisk to mount
# any files for you. Most modules would NOT want
# to set this flag to true
SKIPMOUNT=false.
# Set to true if you need to load system.prop
PROPFILE=false
# Set to true if you need post-fs-data script
POSTFSDATA=false
# Set to true if you need late_start service script
LATESTARTSERVICE=true
CLEANSERVICE=true

ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print "┏━━━┓┏━━━━┓┏━━━┓┏━━━┓
┃┏━┓┃┃┏┓┏┓┃┃┏━┓┃┃┏━┓┃
┃┗━━┓┗┛┃┃┗┛┃┗━┛┃┃┗━┛┃
┗━━┓┃╋╋┃┃╋╋┃┏┓┏┛┃┏━━┛
┃┗━┛┃╋╋┃┃╋╋┃┃┃┗┓┃┃╋╋
┗━━━┛╋╋┗┛╋╋┗┛┗━┛┗┛╋╋"
ui_print ""
sleep 1.5
ui_print "╋╋╋┏━━━┳━━━┳━┓┏━┓╋╋╋
╋╋╋┃┏━┓┃┏━┓┃┃┗┛┃┃╋╋╋
╋╋╋┃┗━┛┃┃╋┃┃┏┓┏┓┃╋╋╋
┏━━┫┏┓┏┫┗━┛┃┃┃┃┃┣━━┓
┗━━┫┃┃┗┫┏━┓┃┃┃┃┃┣━━┛
╋╋╋┗┛┗━┻┛╋┗┻┛┗┛┗┛╋╋╋
┏━━┓┏━━━┳━━━┳━━━┳━━━━┓
┃┏┓┃┃┏━┓┃┏━┓┃┏━┓┃┏┓┏┓┃
┃┗┛┗┫┃╋┃┃┃╋┃┃┗━━╋┛┃┃┗┛
┃┏━┓┃┃╋┃┃┃╋┃┣━━┓┃╋┃┃╋╋
┃┗━┛┃┗━┛┃┗━┛┃┗━┛┃╋┃┃╋╋
┗━━━┻━━━┻━━━┻━━━┛╋┗┛╋╋"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print " ▌Maximize Ram and Space by Auto Cleaning After Each Reboot!"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print " "
ui_print " ▌FETCHING DEVICE INFORMATIONS: "
sleep 1.5
ui_print " "
ui_print " ▌DEVICE ▰ $(getprop ro.product.model) "
sleep 0.5
ui_print " "
ui_print " ▌BRAND ▰ $(getprop ro.product.system.brand) "
sleep 0.5
ui_print " "
ui_print " ▌MODEL ▰ $(getprop ro.build.product) "
sleep 0.5
ui_print " "
ui_print " ▌KERNEL ▰ $(uname -r) "
sleep 0.5
ui_print " "
ui_print " ▌PROCESSOR ▰ $(getprop ro.product.board) "
sleep 0.5
ui_print ""
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

SKIPMOUNT=false

on_install() {
	ui_print ""
  ui_print " ▌Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'config/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'addon/*' -d $TMPDIR >&2
  postfs=$TMPDIR/post-fs-data.sh
  props=$TMPDIR/system.prop
  module=$TMPDIR/module.prop
 .  $TMPDIR/functions.sh
ui_print " ▌DONE ▌"
ui_print ""
ui_print ""
sleep 2
ui_print " "
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print ""
ui_print " ▌Placing Script.."
sleep 1
ui_print " ▌Set Up Important Tings Please wait.."
pm install $MODPATH/StratosphereToast.apk
wget -O "${MODPATH}/system/bin/RAMBOOST" "https://raw.githubusercontent.com/CRANKV2/RamBoost/main/system/bin/RAMBOOST"
sleep 2
ui_print " ▌Installing..."
ui_print ""
sleep 2
ui_print " ▌Successfully Installed, Please Reboot Ur Device!"
ui_print ""
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1.5
ui_print ""
ui_print " ▌Thanks To My Semxy Tester"
ui_print " ▌@Legend_Gaming078"
ui_print " ▌@SkyTfue"
sleep 1
ui_print " ▌Join @AndroidRootModulesCommunity For More Cool Stuff!"
ui_print ""
sleep 1
ui_print " ▌Module Made By @CRANKV2 [Telegram]"
ui_print " ▌Using [ su -c RAMBOOST ] To Boost Manually!"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
}

set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/service.sh 0 0 0777
    set_perm_recursive $MODPATH/system/bin root root 0777 0755
  
}

#Wait till Boot before Execution
wait_until_login() {
while [[ `getprop sys.boot_completed` -ne 1 && -d "/sdcard" ]]
do
sleep 2
done
local test_file="/sdcard/.PERMISSION_TEST"
touch "$test_file"
while [ ! -f "$test_file" ]; do
touch "$test_file"
sleep 2
done
rm "$test_file"
}
wait_until_login

sleep 2
#Start Daemon
RAMM_DAEMON


sleep 2
am start -a android.intent.action.MAIN -e toasttext "RAM Maximizer Initialized, check the Logs !" -n bellavita.toast/.MainActivity
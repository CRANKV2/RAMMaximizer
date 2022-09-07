#Wait till Boot bevore Execution
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

# FIX DRAIN/gms
su -c pm disable com.google.android.gms/.chimera.GmsIntentOperationService

#Execute A.I
sleep 20
STRPAI
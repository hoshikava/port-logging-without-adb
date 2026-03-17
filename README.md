# port-logging-without-adb
get logcat, dmesg, and tombstones while porting some stuff without adb via init(for you who have dead adb or use dsu to test)


What is this?
So for you who like to boot oem ports, and then sets debug 1 doesnt make adb working, then you can get logs via init and this working by store your logcat,dmesg,tombstones to inactive block partition with formatted ext4 rw, E.G if your slot are _a, inactive will _b partition, like this script using recovery_b for target by default

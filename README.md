# port-logging-without-adb
get logcat, dmesg, and tombstones while porting some stuff without adb via init(for you who have dead adb or use dsu to test)


What is this?
So for you who like to boot oem ports, and then sets debug 1 doesnt make adb working, then you can get logs via init and this working by store your logcat,dmesg,tombstones to inactive block partition with formatted ext4, example: if your slot are _a, inactive will _b partition, like this script using recovery_b for target by default


## Usage
Format your inactive block partition to ext4 first
```console
mke2fs -t ext4 /dev/block/by-name/recovery_b
```
Now put kvport.rc to /system/etc/init or inside kvport.rc copy then paste to /system/etc/init/hw/init.rc

After boot your ports(atleast stuck bootanim), boot to your main/booted roms then run
```console
sh /sdcard/dump_logs.sh
```

## Notes
You can modify which inactive block partition you want to put but never do to bootloader partition

You maybe need permissive

Tested, but i dont responsible for any bricked devices!

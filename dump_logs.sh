# @hoshikv @matejkoooo
mkdir -p /mnt/blackbox
mkdir -p /sdcard/kv_logs/
mount -t ext4 /dev/block/by-name/recovery_b /mnt/blackbox
cp /mnt/blackbox/kmsg.log /sdcard/kv_logs/kmsg.log
cp /mnt/blackbox/logcat.log /sdcard/kv_logs/logcat.log
cp -rf /mnt/blackbox/tombstones /sdcard/kv_logs/
#umount
umount /mnt/blackbox
#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19293484:51c013003c454d5f022f4e8a53ed527d28d7a814; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13198632:06b269f68b24d3926a66eac0e12a067530d51890 EMMC:/dev/block/bootdevice/by-name/recovery 51c013003c454d5f022f4e8a53ed527d28d7a814 19293484 06b269f68b24d3926a66eac0e12a067530d51890:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

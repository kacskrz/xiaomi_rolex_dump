#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32638286:c283d46c96ba14d0e6547df0a77eeb8c0ecd43cc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:30555466:03c8b3691f0d7145e567983d9345ce2894c2858e EMMC:/dev/block/bootdevice/by-name/recovery c283d46c96ba14d0e6547df0a77eeb8c0ecd43cc 32638286 03c8b3691f0d7145e567983d9345ce2894c2858e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

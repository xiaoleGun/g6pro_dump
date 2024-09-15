#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:9627904:dea8a7ccb80991cf47e70528e1e23898af780733; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:6711552:7dfcc1d70860596d171ae07582743643f147f78e EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery dea8a7ccb80991cf47e70528e1e23898af780733 9627904 7dfcc1d70860596d171ae07582743643f147f78e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

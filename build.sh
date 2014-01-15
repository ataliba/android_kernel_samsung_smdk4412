rm /home/gustavo/zips/*.zip
cp /home/gustavo/kernel/arch/arm/configs/kernel_defconfig /home/gustavo/kernel/.config
make -j3
find -name '*.ko' -exec cp -av {} /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/ \;
chmod 644 /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/*
/home/gustavo/toolchain/bin/arm-linux-androideabi-strip --strip-unneeded /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/*
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/cm_initramfs.list"
cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/
CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r cm-11-kernel-$CURRENTDATE-CWM.zip ./
cp ./*.zip /home/gustavo/zips/cm-11-kernel-$CURRENTDATE-CWM.zip
cd /home/gustavo/kernel
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/cm_initramfs.twrp.list"
cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/
CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r cm-11-kernel-$CURRENTDATE-TWRP.zip ./
cp ./*.zip /home/gustavo/zips/cm-11-kernel-$CURRENTDATE-TWRP.zip
cd /home/gustavo/kernel
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/omni_initramfs.list"
cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/
CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r omni-4.4-kernel-$CURRENTDATE-CWM.zip ./
cp ./*.zip /home/gustavo/zips/omni-4.4-kernel-$CURRENTDATE-CWM.zip
cd /home/gustavo/kernel
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/omni_initramfs.twrp.list"
cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/
CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r omni-4.4-kernel-$CURRENTDATE-TWRP.zip ./
cp ./*.zip /home/gustavo/zips/omni-4.4-kernel-$CURRENTDATE-TWRP.zip
cd /home/gustavo/kernel
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/slimkat_initramfs.list"
cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/
CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r slimkat-kernel-$CURRENTDATE-CWM.zip ./
cp ./*.zip /home/gustavo/zips/slimkat-kernel-$CURRENTDATE-CWM.zip
cd /home/gustavo/kernel
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/slimkat_initramfs.twrp.list"
cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/
CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r slimkat-kernel-$CURRENTDATE-TWRP.zip ./
cp ./*.zip /home/gustavo/zips/slimkat-kernel-$CURRENTDATE-TWRP.zip

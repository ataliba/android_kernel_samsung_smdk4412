rm /home/gustavo/zips/*.zip
/home/gustavo/kernel/usr/build_scripts/build_kernel.sh
find -name '*.ko' -exec cp -av {} /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/ \;
chmod 644 /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/*
/home/gustavo/toolchain/bin/arm-linux-androideabi-strip --strip-unneeded /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/*
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/cm-10.2_initramfs.list"
cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/
CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r cm-10.2-kernel-$CURRENTDATE-CWM.zip ./
cp ./*.zip /home/gustavo/zips/cm-10.2-kernel-$CURRENTDATE-CWM.zip

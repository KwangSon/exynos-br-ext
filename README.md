# exynos-br-ext
Exynos 5422 (odroid-xu4) buildroot external
```
cd buildroot
make BR2_EXTERNAL=../exynos-br-ext/ odroid_xu4_defconfig
make
```

```
make menuconfig
make savedefconfig
make linux-rebuild
```

## flash sd card
sudo dd if=output/images/sdcard.img of=/dev/sdh bs=8192
cd && ./sd_fusing.sh
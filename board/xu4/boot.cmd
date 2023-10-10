setenv bootargs root=/dev/mmcblk2p2 rootwait
kernel_addr_r=0x42000000; fdt_addr_r=0x43000000;
load mmc 0 $kernel_addr_r zImage
load mmc 0 $fdt_addr_r exynos5422-odroidxu4.dtb
bootz $kernel_addr_r - $fdt_addr_r

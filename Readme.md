# Build Kernel using TWRP(WIP)

```git clone https://github.com/sounddrill31/android_device_generic_kernelstuff device/generic/kernelstuff```

```chmod +x device/generic/kernelstuff/adapt.sh```

```./device/generic/kernelstuff/adapt.sh --out Image.gz-dtb --pagesize 2048 --defconfig vendor/msm8953-perf_defconfig --kernel kernel/xiaomi/oxygen```

```lunch twrp_kernelstuff-eng```

```mka kernel```

```./pack.sh```
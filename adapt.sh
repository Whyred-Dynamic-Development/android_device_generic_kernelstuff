#!/bin/bash

# Default values
out="Image.gz-dtb"
pagesize="2048"
defconfig="vendor/msm8953-perf_defconfig"
kernelsource="kernel/xiaomi/oxygen"

# Parse arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --out)
            out="$2"
            shift
            ;;
        --pagesize)
            pagesize="$2"
            shift
            ;;
        --defconfig)
            defconfig="$2"
            shift
            ;;
        --kernel)
            kernelsource="$2"
            shift
            ;;
        *)
            echo "Unknown argument: $1"
            exit 1
            ;;
    esac
    shift
done

# Replace values in BoardConfig.mk
sed -i "s|BOARD_KERNEL_IMAGE_NAME := .*$|BOARD_KERNEL_IMAGE_NAME := $out|" device/generic/kernelstuff/BoardConfig.mk
sed -i "s|BOARD_KERNEL_PAGESIZE := .*$|BOARD_KERNEL_PAGESIZE := $pagesize|" device/generic/kernelstuff/BoardConfig.mk
sed -i "s|TARGET_KERNEL_CONFIG := .*$|TARGET_KERNEL_CONFIG := $defconfig|" device/generic/kernelstuff/BoardConfig.mk
sed -i "s|TARGET_KERNEL_SOURCE := .*$|TARGET_KERNEL_SOURCE := $kernelsource|" device/generic/kernelstuff/BoardConfig.mk

PATCH_DIR=$(cd $(dirname $0); pwd)
dry_run=0
verbose=1

run_command()
{
    if [ $dry_run -ne 0 ] || [ $verbose -ne 0 ]; then
	echo "$1"
    fi
    if [ $dry_run -eq 0 ]; then
	eval "$1"
    fi
}

run_patch()
{
    if [ $dry_run -ne 0 ] || [ $verbose -ne 0 ]; then
	echo "## patch ${PATCH_DIR}/${1}"
    fi
    run_command "patch -p1 < ${PATCH_DIR}/${1}"
    run_command "git add --all"
    run_command "git commit -m '[patch] ${1}'"
}

run_patch 010_arch-arm-mach-zynq.patch
run_patch 011_arch-arm-configs.patch
run_patch 012_arch-arm-boot-dts.patch
run_patch 020_arch-arm64.patch
run_patch 021_arch-arm64-configs.patch
run_patch 022_arch-arm64-boot-dts.patch
run_patch 030_arch-microblaze.patch
run_patch 050_arch-riscv.patch
run_patch 100_kernel-irq.patch
run_patch 101_net-ipv4.patch
run_patch 201_drivers-cdx.patch
run_patch 202_drivers-clk.patch
run_patch 203_drivers-clocksource.patch
run_patch 204_drivers-crypto.patch
run_patch 205_drivers-dma.patch
run_patch 206_drivers-edac.patch
run_patch 207_drivers-firmware.patch
run_patch 208_drivers-fpga.patch
run_patch 210_drivers-gpu-drm.patch
run_patch 211_drivers-hwmon.patch
run_patch 213_drivers-i3c.patch
run_patch 214_drivers-iio.patch
run_patch 216_drivers-irqchip.patch
run_patch 217_drivers-mailbox.patch
run_patch 218_drivers-media-common.patch
run_patch 219_drivers-media-i2c.patch
run_patch 220_drivers-media-mc.patch
run_patch 221_drivers-media-platform.patch
run_patch 222_drivers-media-test-drivers.patch
run_patch 223_drivers-media-usb.patch
run_patch 224_drivers-media-v4l2.patch
run_patch 225_drivers-mfd.patch
run_patch 226_drivers-misc.patch
run_patch 227_drivers-mmc.patch
run_patch 228_drivers-mtd.patch
run_patch 229_drivers-net-can.patch
run_patch 230_drivers-net-ethernet.patch
run_patch 231_drivers-net-phy.patch
run_patch 234_drivers-nvmem.patch
run_patch 235_drivers-of.patch
run_patch 236_drivers-pci.patch
run_patch 237_drivers-phy.patch
run_patch 238_drivers-pinctrl.patch
run_patch 240_drivers-ptp.patch
run_patch 241_drivers-pwm.patch
run_patch 242_drivers-remoteproc.patch
run_patch 243_drivers-reset.patch
run_patch 244_drivers-rpmsg.patch
run_patch 245_drivers-soc-xilinx.patch
run_patch 246_drivers-spi.patch
run_patch 247_drivers-staging.patch
run_patch 249_drivers-tty.patch
run_patch 251_drivers-uio.patch
run_patch 260_drivers-usb-core.patch
run_patch 261_drivers-usb-chipidea.patch
run_patch 262_drivers-usb-dwc3.patch
run_patch 263_drivers-usb-gadget.patch
run_patch 264_drivers-usb-host.patch
run_patch 265_drivers-usb-misc.patch
run_patch 266_drivers-usb-phy.patch
run_patch 270_drivers-vfio-cdx.patch
run_patch 271_drivers-video.patch
run_patch 272_drivers-virtio.patch
run_patch 273_drivers-w1.patch
run_patch 274_drivers-watchdog.patch
run_patch 275_drivers-xen.patch
run_patch 300_sound-pci.patch
run_patch 301_sound-soc-xilinx.patch
run_patch 999_other-document.patch

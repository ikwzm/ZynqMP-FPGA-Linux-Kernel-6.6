Make ./paches/linux-6.6.70-xlnx-v2024.1/
------------------------------------------------------------------------------------

### Get linux-6.6.70

```console
shell$ git clone --depth 1 -b v6.6.70 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-6.6.70
```

### Get linux-xlnx v6.6_LTS_2024.1_merge_6.6.70

```console
shell$ git clone --depth 1 -b xlnx_rebase_v6.6_LTS_2024.1_merge_6.6.70 https://github.com/Xilinx/linux-xlnx.git linux-xlnx-6.6.70-2024.1
```

### Make diff-linux-6.6.70-xlnx-v2024.1.txt

```console
shell$ ruby ./make-patches/source-tree-diff-list.rb -t linux-6.6.70-xlnx-v2024.1 -A linux-6.6.70 -B linux-xlnx-6.6.70-2024.1 -o ./make-patches/diff-linux-6.6.70-xlnx-v2024.1.txt linux-6.6.70 linux-xlnx-6.6.70-2024.1 -v
## source-tree-diff-list.rb 0.1.1
## NAME: linux-6.6.70-xlnx-v2024.1
## A   : {name: linux-6.6.70, path: linux-6.6.70}
## B   : {name: linux-xlnx-6.6.70-2024.1, path: linux-xlnx-6.6.70-2024.1}
## OUT : ./make-patches/diff-linux-6.6.70-xlnx-v2024.1.txt
```

### Make make-patches-linux-6.6.70-xlnx-v2024.1.sh

```console
shell$ ruby ./make-patches/make-patch-shell.rb -d ./make-patches/diff-linux-6.6.70-xlnx-v2024.1.txt -g make-patches/patch-group-linux-6.6.70-xlnx-v2024.1.yml -s ./make-patches/make-patches-linux-6.6.70-xlnx-v2024.1.sh
```

### Run make-patches-linux-6.6.70-xlnx-v2024.1.sh

```console
shell$ sh ./make-patches/make-patches-linux-6.6.70-xlnx-v2024.1.sh
shell$ ls -1 ./patches/linux-6.6.70-xlnx-v2024.1/
010_arch-arm-mach-zynq.patch
011_arch-arm-configs.patch
012_arch-arm-boot-dts.patch
020_arch-arm64.patch
021_arch-arm64-configs.patch
022_arch-arm64-boot-dts.patch
030_arch-microblaze.patch
100_kernel-irq.patch
101_net-ipv4.patch
102_crypto.patch
201_drivers-cdx.patch
202_drivers-clk.patch
203_drivers-clocksource.patch
204_drivers-crypto.patch
205_drivers-dma.patch
206_drivers-edac.patch
207_drivers-firmware.patch
208_drivers-fpga.patch
209_drivers-gpio.patch
210_drivers-gpu-drm.patch
211_drivers-hwmon.patch
212_drivers-i2c.patch
213_drivers-i3c.patch
214_drivers-iio.patch
216_drivers-irqchip.patch
217_drivers-mailbox.patch
218_drivers-media-common.patch
219_drivers-media-i2c.patch
220_drivers-media-mc.patch
221_drivers-media-platform.patch
222_drivers-media-test-drivers.patch
223_drivers-media-usb.patch
224_drivers-media-v4l2.patch
225_drivers-mfd.patch
226_drivers-misc.patch
227_drivers-mmc.patch
228_drivers-mtd.patch
229_drivers-net-can.patch
230_drivers-net-ethernet.patch
231_drivers-net-phy.patch
234_drivers-nvmem.patch
235_drivers-of.patch
236_drivers-pci.patch
237_drivers-phy.patch
238_drivers-pinctrl.patch
240_drivers-ptp.patch
241_drivers-pwm.patch
242_drivers-remoteproc.patch
243_drivers-reset.patch
244_drivers-rpmsg.patch
245_drivers-soc-xilinx.patch
246_drivers-spi.patch
247_drivers-staging.patch
248_drivers-thermal.patch
249_drivers-tty.patch
250_drivers-ufs.patch
251_drivers-uio.patch
260_drivers-usb-core.patch
261_drivers-usb-chipidea.patch
262_drivers-usb-dwc3.patch
263_drivers-usb-gadget.patch
264_drivers-usb-host.patch
265_drivers-usb-misc.patch
266_drivers-usb-phy.patch
270_drivers-vidoe.patch
271_drivers-vfio-cdx.patch
272_drivers-virtio.patch
273_drivers-w1.patch
274_drivers-watchdog.patch
275_drivers-xen.patch
300_sound-pci.patch
301_sound-soc-xilinx.patch
999_other-document.patch
other.patch
xxx_patch.sh
```


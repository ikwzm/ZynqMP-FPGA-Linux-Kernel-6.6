Make ./paches/linux-6.6.88-xlnx-v2024.2/
------------------------------------------------------------------------------------

### Get linux-6.6.70

```console
shell$ git clone --depth 1 -b v6.6.70 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-6.6.70
```

### Get linux-6.6.70-xlnx-v2024.2

```console
shell$ git clone --depth 1 -b v6.6.70 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-6.6.70-xlnx-v2024.2
shell$ cd linux-6.6.70-xlnx-v2024.2
shell$ git checkout -b linux-6.6.70-xlnx-v2024.2
shell$ sh ../patches/linux-6.6.70-xlnx-v2024.2/origin_patch.sh
shell$ cd
```

### Get linux-6.6.88

```console
shell$ git clone --depth 1 -b v6.6.88 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-6.6.88
```

### Make diff-linux-xlnx-6.6.70-xlnx-v2024.2.txt

```console
shell$ ruby ./make-patches/source-tree-diff-list.rb -t linux-6.6.70-xlnx-v2024.2 -A linux-6.6.70 -B linux-6.6.70-xlnx-v2024.2 -o ./make-patches/diff-linux-6.6.70-xlnx-v2024.2.txt linux-6.6.70 linux-6.6.70-xlnx-v2024.2 -v
## source-tree-diff-list.rb 0.1.1
## NAME: linux-6.6.70-xlnx-v2024.2
## A   : {name: linux-6.6.70, path: linux-6.6.70}
## B   : {name: linux-6.6.70-xlnx-v2024.2, path: linux-6.6.70-xlnx-v2024.2}
## OUT : ./make-patches/diff-linux-6.6.70-xlnx-v2024.2.txt
```

### Make diff-linux-6.6.70-6.88.txt

```console
shell$ ruby ./make-patches/source-tree-diff-list.rb -t linux-6.6.70-6.6.88 -A linux-6.6.70 -B linux-6.6.88 -o ./make-patches/diff-linux-6.6.70-6.6.88.txt linux-6.6.70 linux-6.6.88 -v
## source-tree-diff-list.rb 0.1.1
## NAME: linux-6.6.70-6.6.88
## A   : {name: linux-6.6.70, path: linux-6.6.70}
## B   : {name: linux-6.6.88, path: linux-6.6.88}
## OUT : ./make-patches/diff-linux-6.6.70-6.6.88.txt
```

### Compare diff-linux-6.6.70-6.88.txt and diff-linux-xlnx-6.6.70-xlnx-v2024.2.txt

```console
shell$ ruby make-patches/compare-diff-list.rb make-patches/diff-linux-6.6.70-6.6.88.txt make-patches/diff-linux-6.6.70-xlnx-v2024.2.txt 
contents: 
 - U: MAINTAINERS
 - U: drivers/cdx/cdx.c
 - U: drivers/gpu/drm/drm_atomic_uapi.c
 - U: drivers/gpu/drm/drm_connector.c
 - U: drivers/gpu/drm/drm_edid.c
 - U: drivers/gpu/drm/drm_fb_helper.c
 - U: drivers/gpu/drm/xlnx/zynqmp_dpsub.c
 - U: drivers/i3c/master/dw-i3c-master.c
 - U: drivers/irqchip/irqchip.c
 - U: drivers/media/i2c/ov5640.c
 - U: drivers/media/usb/uvc/uvc_queue.c
 - U: drivers/media/usb/uvc/uvcvideo.h
 - U: drivers/mtd/spi-nor/core.c
 - U: drivers/net/ethernet/cadence/macb.h
 - U: drivers/net/ethernet/cadence/macb_main.c
 - U: drivers/net/ethernet/xilinx/xilinx_axienet_main.c
 - U: drivers/pci/controller/pcie-xilinx-cpm.c
 - U: drivers/remoteproc/remoteproc_core.c
 - U: drivers/spi/spi-cadence-quadspi.c
 - U: drivers/spi/spi-zynq-qspi.c
 - U: drivers/tty/serial/xilinx_uartps.c
 - U: drivers/ufs/core/ufshcd-priv.h
 - U: drivers/ufs/core/ufshcd.c
 - U: drivers/usb/core/hub.c
 - U: drivers/usb/dwc3/core.c
 - U: drivers/usb/dwc3/core.h
 - U: drivers/usb/dwc3/gadget.c
 - U: drivers/usb/gadget/function/f_tcm.c
 - U: drivers/usb/host/xhci.h
 - U: include/drm/drm_connector.h
 - U: include/ufs/ufshcd.h
 - U: usr/include/Makefile
```

### Make linux-6.6.88-xlnx-v2024.2

#### xxx_update.sh

```console
shell$ git clone --depth 1 -b v6.6.88 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-6.6.88-xlnx-v2024.2
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-1
shell$ sh ../patches/linux-6.6.88-xlnx-v2024.2/xxx_update.sh
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/010_arch-arm-mach-zynq.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/011_arch-arm-configs.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/012_arch-arm-boot-dts.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/020_arch-arm64.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/021_arch-arm64-configs.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/022_arch-arm64-boot-dts.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/030_arch-microblaze.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/050_arch-riscv.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/100_kernel-irq.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/101_net-ipv4.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/102_crypto.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/201_drivers-cdx.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/202_drivers-clk.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/203_drivers-clocksource.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/204_drivers-crypto.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/205_drivers-dma.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/206_drivers-edac.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/207_drivers-firmware.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/208_drivers-fpga.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/210_drivers-gpu-drm.patch
  :
patching file drivers/gpu/drm/xlnx/zynqmp_dpsub.c
Hunk #1 FAILED at 9.
Hunk #2 succeeded at 322 (offset 2 lines).
1 out of 2 hunks FAILED -- saving rejects to file drivers/gpu/drm/xlnx/zynqmp_dpsub.c.rej
  :
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/211_drivers-hwmon.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/212_drivers-i2c.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/213_drivers-i3c.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/214_drivers-iio.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/216_drivers-irqchip.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/217_drivers-mailbox.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/218_drivers-media-common.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/219_drivers-media-i2c.patch
  :
Reversed (or previously applied) patch detected!  Assume -R? [n] 
Apply anyway? [n] 
Skipping patch.
1 out of 1 hunk ignored -- saving rejects to file drivers/media/i2c/ov5640.c.rej
  :
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/220_drivers-media-mc.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/221_drivers-media-platform-fix.patch
  :
patch -p1 < /home/ichiro/work/ZynqMP-FPGA-Linux-Kernel-6.6/patches/linux-6.6.70-xlnx-v2024.2/221_drivers-media-platform-fix.patch
can't find file to patch at input line 5
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|diff --git a/drivers/media/platform/xilinx/xilinx-isppipeline.c b/drivers/media/platform/xilinx/xilinx-isppipeline.c
|index 6c5555a8a..d358b0832 100644
|--- a/drivers/media/platform/xilinx/xilinx-isppipeline.c
|+++ b/drivers/media/platform/xilinx/xilinx-isppipeline.c
--------------------------
File to patch: 
Skip this patch? [y] 
Skipping patch.
1 out of 1 hunk ignored
  :
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/221_drivers-media-platform.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/222_drivers-media-test-drivers.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/223_drivers-media-usb.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/224_drivers-media-v4l2.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/225_drivers-mfd.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/226_drivers-misc.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/227_drivers-mmc.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/228_drivers-mtd.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/229_drivers-net-can.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/230_drivers-net-ethernet.patch
  :
1 out of 49 hunks FAILED -- saving rejects to file drivers/net/ethernet/xilinx/xilinx_axienet_main.c.rej
  :
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/231_drivers-net-phy.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/234_drivers-nvmem.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/235_drivers-of.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/236_drivers-pci.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/237_drivers-phy.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/238_drivers-pinctrl.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/240_drivers-ptp.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/241_drivers-pwm.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/242_drivers-remoteproc.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/243_drivers-reset.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/244_drivers-rpmsg.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/245_drivers-soc-xilinx.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/246_drivers-spi.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/247_drivers-staging.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/248_drivers-thermal.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/249_drivers-tty.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/250_drivers-ufs.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/251_drivers-uio.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/260_drivers-usb-core.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/261_drivers-usb-chipidea.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/262_drivers-usb-dwc3.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/263_drivers-usb-gadget.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/264_drivers-usb-host.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/265_drivers-usb-misc.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/266_drivers-usb-phy.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/270_drivers-vfio-cdx.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/271_drivers-video.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/272_drivers-virtio.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/273_drivers-w1.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/274_drivers-watchdog.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/275_drivers-xen.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/300_sound-pci.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/301_sound-soc-xilinx.patch
## make patch ../patches/linux-6.6.88-xlnx-v2024.2/999_other-document.patch
```

#### Fix patches/linux-6.6.88-xlnx-v2024.2/210_drivers-gpu-drm.patch 

```console
shell$ cd 
shell$ git checkout v6.6.88
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-210_drivers-gpu-drm
shell$ sh ../patches/linux-6.6.88-xlnx-v2024.2/xxx_update-210_drivers-gpu-drm.sh
  :
## try patch ../patches/linux-6.6.70-xlnx-v2024.2/210_drivers-gpu-drm.patch
  :
1 out of 2 hunks FAILED -- saving rejects to file drivers/gpu/drm/xlnx/zynqmp_dpsub.c.rej
  :  
```

```console
shell$ cd ..
shell$ diff -p linux-6.6.70/drivers/gpu/drm/xlnx/zynqmp_dpsub.c linux-6.6.88/drivers/gpu/drm/xlnx/zynqmp_dpsub.c 
*** linux-6.6.70/drivers/gpu/drm/xlnx/zynqmp_dpsub.c	2025-03-31 13:53:15.091236100 +0900
--- linux-6.6.88/drivers/gpu/drm/xlnx/zynqmp_dpsub.c	2025-04-30 11:42:16.608223200 +0900
*************** static int zynqmp_dpsub_probe(struct pla
*** 231,236 ****
--- 231,238 ----
  	if (ret)
  		return ret;
  
+ 	dma_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
+ 
  	/* Try the reserved memory. Proceed if there's none. */
  	of_reserved_mem_device_init(&pdev->dev);
  
```

```console
shell$ cd linux-6.6.88-xlnx-v2024.2/drivers/gpu/drm/xlnx/
shell$ cp ../../../../../linux-6.6.70-xlnx-v2024.2/drivers/gpu/drm/xlnx/zynqmp_dpsub.c .
shell$ edit zynqmp_dpsub.c
shell$ diff -p zynqmp_dpsub.c ../../../../../linux-6.6.70-xlnx-v2024.2/drivers/gpu/drm/xlnx/zynqmp_dpsub.c
*** zynqmp_dpsub.c	2025-04-30 15:21:39.093621000 +0900
--- ../../../../../linux-6.6.70-xlnx-v2024.2/drivers/gpu/drm/xlnx/zynqmp_dpsub.c	2025-04-30 12:25:19.048031100 +0900
***************
*** 25,65 ****
  #define DP_PCM_NAME_0 "zynqmp_dp_snd_pcm0"
  #define DP_PCM_NAME_1 "zynqmp_dp_snd_pcm1"
  
- /* -----------------------------------------------------------------------------
-  * Power Management
-  */
- 
- static int __maybe_unused zynqmp_dpsub_pm_suspend(struct device *dev)
- {
- 	struct platform_device *pdev =
- 		container_of(dev, struct platform_device, dev);
- 	struct zynqmp_dpsub *dpsub = platform_get_drvdata(pdev);
- 
- 	zynqmp_dp_pm_suspend(dpsub->dp);
- 
- 	return 0;
- }
- 
- static int __maybe_unused zynqmp_dpsub_pm_resume(struct device *dev)
- {
- 	struct platform_device *pdev =
- 		container_of(dev, struct platform_device, dev);
- 	struct zynqmp_dpsub *dpsub = platform_get_drvdata(pdev);
- 
- 	zynqmp_dp_pm_resume(dpsub->dp);
- 
- 	return 0;
- }
- 
- static const struct dev_pm_ops zynqmp_dpsub_pm_ops = {
- 	SET_SYSTEM_SLEEP_PM_OPS(zynqmp_dpsub_pm_suspend,
- 				zynqmp_dpsub_pm_resume)
- };
- 
- /* -----------------------------------------------------------------------------
-  * Component
-  */
- 
  static int
  zynqmp_dpsub_bind(struct device *dev, struct device *master, void *data)
  {
--- 25,30 ----
*************** static struct of_dev_auxdata zynqmp_dpsu
*** 95,104 ****
  	{ /* end of table */ }
  };
  
- /* -----------------------------------------------------------------------------
-  * Probe & Remove
-  */
- 
  static int zynqmp_dpsub_probe(struct platform_device *pdev)
  {
  	struct zynqmp_dpsub *dpsub;
--- 60,65 ----
*************** static int zynqmp_dpsub_remove(struct pl
*** 189,194 ****
--- 150,182 ----
  	return ret;
  }
  
+ static int __maybe_unused zynqmp_dpsub_pm_suspend(struct device *dev)
+ {
+ 	struct platform_device *pdev =
+ 		container_of(dev, struct platform_device, dev);
+ 	struct zynqmp_dpsub *dpsub = platform_get_drvdata(pdev);
+ 
+ 	zynqmp_dp_pm_suspend(dpsub->dp);
+ 
+ 	return 0;
+ }
+ 
+ static int __maybe_unused zynqmp_dpsub_pm_resume(struct device *dev)
+ {
+ 	struct platform_device *pdev =
+ 		container_of(dev, struct platform_device, dev);
+ 	struct zynqmp_dpsub *dpsub = platform_get_drvdata(pdev);
+ 
+ 	zynqmp_dp_pm_resume(dpsub->dp);
+ 
+ 	return 0;
+ }
+ 
+ static const struct dev_pm_ops zynqmp_dpsub_pm_ops = {
+ 	SET_SYSTEM_SLEEP_PM_OPS(zynqmp_dpsub_pm_suspend,
+ 				zynqmp_dpsub_pm_resume)
+ };
+ 
  static const struct of_device_id zynqmp_dpsub_of_match[] = {
  	{ .compatible = "xlnx,zynqmp-dpsub-1.7", },
  	{ /* end of table */ },
```

```console
shell$ cd ../../../..
shell$ git status
On branch linux-6.6.88-xlnx-v2024.2-210_drivers-gpu-drm
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   Documentation/devicetree/bindings/display/panel/panel-simple.yaml
	modified:   Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
	modified:   drivers/gpu/drm/display/drm_dp_helper.c
	modified:   drivers/gpu/drm/display/drm_hdmi_helper.c
	modified:   drivers/gpu/drm/drm_atomic_state_helper.c
	modified:   drivers/gpu/drm/drm_atomic_uapi.c
	modified:   drivers/gpu/drm/drm_connector.c
	modified:   drivers/gpu/drm/drm_edid.c
	modified:   drivers/gpu/drm/drm_fb_dma_helper.c
	modified:   drivers/gpu/drm/drm_fb_helper.c
	modified:   drivers/gpu/drm/drm_fourcc.c
	modified:   drivers/gpu/drm/drm_framebuffer.c
	modified:   drivers/gpu/drm/panel/panel-simple.c
	modified:   drivers/gpu/drm/xlnx/Kconfig
	modified:   drivers/gpu/drm/xlnx/Makefile
	modified:   drivers/gpu/drm/xlnx/zynqmp_disp.c
	modified:   drivers/gpu/drm/xlnx/zynqmp_disp.h
	modified:   drivers/gpu/drm/xlnx/zynqmp_disp_regs.h
	modified:   drivers/gpu/drm/xlnx/zynqmp_dp.c
	modified:   drivers/gpu/drm/xlnx/zynqmp_dp.h
	modified:   drivers/gpu/drm/xlnx/zynqmp_dpsub.c
	modified:   drivers/gpu/drm/xlnx/zynqmp_dpsub.h
	modified:   include/drm/display/drm_dp.h
	modified:   include/drm/display/drm_hdmi_helper.h
	modified:   include/drm/drm_connector.h
	modified:   include/drm/drm_edid.h
	modified:   include/drm/drm_fourcc.h
	modified:   include/drm/drm_mode_config.h
	modified:   include/uapi/drm/drm_fourcc.h
	modified:   include/uapi/drm/drm_mode.h

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
	Documentation/devicetree/bindings/display/xlnx/bridge.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,dp-tx.yaml
	Documentation/devicetree/bindings/display/xlnx/xlnx,dsi.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,mixer.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,pl-disp.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,sdi-tx.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,v-hdmi-txss1.yaml
	Documentation/devicetree/bindings/display/xlnx/xlnx,vpss-csc.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,vpss-scaler.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,vtc.txt
	Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.txt
	drivers/gpu/drm/drm_connector.c.orig
	drivers/gpu/drm/xlnx/hdcp/
	drivers/gpu/drm/xlnx/xlnx_bridge.c
	drivers/gpu/drm/xlnx/xlnx_bridge.h
	drivers/gpu/drm/xlnx/xlnx_crtc.c
	drivers/gpu/drm/xlnx/xlnx_crtc.h
	drivers/gpu/drm/xlnx/xlnx_csc.c
	drivers/gpu/drm/xlnx/xlnx_dptx.c
	drivers/gpu/drm/xlnx/xlnx_drv.c
	drivers/gpu/drm/xlnx/xlnx_drv.h
	drivers/gpu/drm/xlnx/xlnx_dsi.c
	drivers/gpu/drm/xlnx/xlnx_fb.c
	drivers/gpu/drm/xlnx/xlnx_fb.h
	drivers/gpu/drm/xlnx/xlnx_gem.c
	drivers/gpu/drm/xlnx/xlnx_gem.h
	drivers/gpu/drm/xlnx/xlnx_hdmi.c
	drivers/gpu/drm/xlnx/xlnx_mixer.c
	drivers/gpu/drm/xlnx/xlnx_pl_disp.c
	drivers/gpu/drm/xlnx/xlnx_scaler.c
	drivers/gpu/drm/xlnx/xlnx_sdi.c
	drivers/gpu/drm/xlnx/xlnx_sdi_modes.h
	drivers/gpu/drm/xlnx/xlnx_sdi_timing.c
	drivers/gpu/drm/xlnx/xlnx_sdi_timing.h
	drivers/gpu/drm/xlnx/xlnx_vtc.c
	drivers/gpu/drm/xlnx/zynqmp_dpsub.c.orig
	drivers/gpu/drm/xlnx/zynqmp_dpsub.c.rej
	include/dt-bindings/drm/


It took 2.91 seconds to enumerate untracked files. 'status -uno'
may speed it up, but you have to be careful not to forget to add
new files yourself (see 'git help status').
no changes added to commit (use "git add" and/or "git commit -a")
```

```console
shell$ rm drivers/gpu/drm/drm_connector.c.orig
shell$ rm drivers/gpu/drm/xlnx/zynqmp_dpsub.c.orig
shell$ rm drivers/gpu/drm/xlnx/zynqmp_dpsub.c.rej
shell$ git add --all
shell$ git commit -m "[patch] 210_drivers-gpu-drm.patch"
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/210_drivers-gpu-drm.patch 
```

#### Fix patches/linux-6.6.88-xlnx-v2024.2/219_drivers-media-i2c.patch

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout v6.6.88
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-219_drivers-media-i2c
shell$ sh ../patches/linux-6.6.88-xlnx-v2024.2/xxx_update-219_drivers-media-i2c.sh
  :
patching file drivers/media/i2c/ov5640.c
Reversed (or previously applied) patch detected!  Assume -R? [n] 
Apply anyway? [n] 
Skipping patch.
1 out of 1 hunk ignored -- saving rejects to file drivers/media/i2c/ov5640.c.rej
```

```console
shell$ diff -p linux-6.6.88/drivers/media/i2c/ov5640.c linux-6.6.70/drivers/media/i2c/ov5640.c 
*** linux-6.6.88/drivers/media/i2c/ov5640.c	2025-04-30 11:42:18.491424900 +0900
--- linux-6.6.70/drivers/media/i2c/ov5640.c	2025-03-31 13:53:16.926429900 +0900
*************** static int ov5640_get_light_freq(struct
*** 1982,1988 ****
  			light_freq = 50;
  		} else {
  			/* 60Hz */
- 			light_freq = 60;
  		}
  	}
  
--- 1982,1987 ----
```

```console
shell$ diff -p linux-6.6.70-xlnx-v2024.2/drivers/media/i2c/ov5640.c linux-6.6.70/drivers/media/i2c/ov5640.c 
*** linux-6.6.70-xlnx-v2024.2/drivers/media/i2c/ov5640.c	2025-04-30 12:25:54.204010000 +0900
--- linux-6.6.70/drivers/media/i2c/ov5640.c	2025-03-31 13:53:16.926429900 +0900
*************** static int ov5640_get_light_freq(struct
*** 1982,1988 ****
  			light_freq = 50;
  		} else {
  			/* 60Hz */
- 			light_freq = 60;
  		}
  	}
  
--- 1982,1987 ----
```

```console
shell$ cd linux-6.6.88-xlnx-v2024.2/drivers/media/i2c/
shell$ diff ov5640.c ../../../../linux-6.6.70-xlnx-v2024.2/drivers/media/i2c/ov5640.c
```

```console
shell$ cd linux-6.6.88-xlnx-v2024.2/
shell$ rm drivers/media/i2c/ov5640.c.rej
shell$ git add --all
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/219_drivers-media-i2c.patch 
```

#### Fix patches/linux-6.6.88-xlnx-v2024.2/221_drivers-media-platform-fix.patch

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout v6.6.88
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-221_drivers-media-platform-fix
shell$ sh ../patches/linux-6.6.88-xlnx-v2024.2/xxx_update-221_drivers-media-platform.sh
  :
  :
```

edit ../patches/linux-6.6.88-xlnx-v2024.2/xxx_update.sh


```console
shell$ diff -c patches/linux-6.6.88-xlnx-v2024.2/xxx_update.sh patches/linux-6.6.88-xlnx-v2024.2/xxx_update.sh~
*** patches/linux-6.6.88-xlnx-v2024.2/xxx_update.sh	2025-05-01 09:54:00.296484100 +0900
--- patches/linux-6.6.88-xlnx-v2024.2/xxx_update.sh~	2025-04-30 13:58:21.486781000 +0900
***************
*** 87,94 ****
  update_patch 218_drivers-media-common.patch
  update_patch 219_drivers-media-i2c.patch
  update_patch 220_drivers-media-mc.patch
- update_patch 221_drivers-media-platform.patch
  update_patch 221_drivers-media-platform-fix.patch
  update_patch 222_drivers-media-test-drivers.patch
  update_patch 223_drivers-media-usb.patch
  update_patch 224_drivers-media-v4l2.patch
--- 87,94 ----
  update_patch 218_drivers-media-common.patch
  update_patch 219_drivers-media-i2c.patch
  update_patch 220_drivers-media-mc.patch
  update_patch 221_drivers-media-platform-fix.patch
+ update_patch 221_drivers-media-platform.patch
  update_patch 222_drivers-media-test-drivers.patch
  update_patch 223_drivers-media-usb.patch
  update_patch 224_drivers-media-v4l2.patch
```

```console
shell$ git add --all
shell$ git commit -m "[patch] 221_drivers-media-platform-fix.patch"
```

#### Fix patches/linux-6.6.88-xlnx-v2024.2/230_drivers-net-ethernet.patch

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout v6.6.88
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-230_drivers-net-ethernet
shell$ sh ../patches/linux-6.6.88-xlnx-v2024.2/xxx_update-230_drivers-net-ethernet.sh
  :
  :
## try patch /home/ichiro/work/ZynqMP-FPGA-Linux-Kernel-6.6/patches/linux-6.6.70-xlnx-v2024.2/230_drivers-net-ethernet.patch
patch -p1 < /home/ichiro/work/ZynqMP-FPGA-Linux-Kernel-6.6/patches/linux-6.6.70-xlnx-v2024.2/230_drivers-net-ethernet.patch
patching file Documentation/devicetree/bindings/net/xlnx,axi-ethernet.yaml
patching file Documentation/devicetree/bindings/net/xlnx,emaclite.yaml
patching file Documentation/devicetree/bindings/net/xlnx,gmii-to-rgmii.yaml
patching file drivers/net/ethernet/cadence/macb.h
Hunk #5 succeeded at 1283 (offset 2 lines).
patching file drivers/net/ethernet/cadence/macb_main.c
Hunk #9 succeeded at 2480 (offset 2 lines).
Hunk #10 succeeded at 2575 (offset 2 lines).
Hunk #11 succeeded at 2592 (offset 2 lines).
Hunk #12 succeeded at 2628 (offset 2 lines).
Hunk #13 succeeded at 2648 (offset 2 lines).
Hunk #14 succeeded at 3286 (offset 7 lines).
Hunk #15 succeeded at 3772 (offset 7 lines).
Hunk #16 succeeded at 3781 (offset 7 lines).
Hunk #17 succeeded at 3792 (offset 7 lines).
Hunk #18 succeeded at 4873 (offset 7 lines).
Hunk #19 succeeded at 4924 (offset 7 lines).
Hunk #20 succeeded at 5060 (offset 7 lines).
Hunk #21 succeeded at 5141 (offset 8 lines).
Hunk #22 succeeded at 5167 (offset 8 lines).
Hunk #23 succeeded at 5219 (offset 8 lines).
Hunk #24 succeeded at 5227 (offset 8 lines).
Hunk #25 succeeded at 5278 (offset 8 lines).
Hunk #26 succeeded at 5295 (offset 8 lines).
Hunk #27 succeeded at 5308 (offset 8 lines).
Hunk #28 succeeded at 5315 (offset 8 lines).
Hunk #29 succeeded at 5368 (offset 8 lines).
Hunk #30 succeeded at 5381 (offset 8 lines).
patching file drivers/net/ethernet/xilinx/Kconfig
patching file drivers/net/ethernet/xilinx/Makefile
patching file drivers/net/ethernet/xilinx/xilinx_axienet.h
patching file drivers/net/ethernet/xilinx/xilinx_axienet_dma.c
patching file drivers/net/ethernet/xilinx/xilinx_axienet_eoe.c
patching file drivers/net/ethernet/xilinx/xilinx_axienet_eoe.h
patching file drivers/net/ethernet/xilinx/xilinx_axienet_main.c
Hunk #31 succeeded at 2879 (offset 6 lines).
Hunk #32 succeeded at 2891 (offset 6 lines).
Hunk #33 succeeded at 2904 (offset 6 lines).
Hunk #34 succeeded at 3099 (offset 6 lines).
Hunk #35 succeeded at 3359 (offset 6 lines).
Hunk #36 succeeded at 3375 (offset 6 lines).
Hunk #37 succeeded at 3449 (offset 6 lines).
Hunk #38 succeeded at 3475 (offset 6 lines).
Hunk #39 succeeded at 3504 (offset 6 lines).
Hunk #40 succeeded at 3983 (offset 6 lines).
Hunk #41 succeeded at 4027 (offset 6 lines).
Hunk #42 succeeded at 4074 (offset 6 lines).
Hunk #43 succeeded at 4109 (offset 6 lines).
Hunk #44 succeeded at 4138 (offset 6 lines).
Hunk #45 succeeded at 4461 (offset 6 lines).
Hunk #46 FAILED at 4494.
Hunk #47 succeeded at 4544 (offset 7 lines).
Hunk #48 succeeded at 4561 (offset 7 lines).
Hunk #49 succeeded at 4576 (offset 7 lines).
1 out of 49 hunks FAILED -- saving rejects to file drivers/net/ethernet/xilinx/xilinx_axienet_main.c.rej
patching file drivers/net/ethernet/xilinx/xilinx_axienet_mcdma.c
patching file drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c
patching file drivers/net/ethernet/xilinx/xilinx_emaclite.c  
```

##### Check drivers/net/ethernet/cadence/macb_main.c

```console
shell$ diff -p linux-6.6.88/drivers/net/ethernet/cadence/macb_main.c linux-6.6.70/drivers/net/ethernet/cadence/macb_main.c 
*** linux-6.6.88/drivers/net/ethernet/cadence/macb_main.c	2025-04-30 11:42:20.258285900 +0900
--- linux-6.6.70/drivers/net/ethernet/cadence/macb_main.c	2025-03-31 13:53:18.749445600 +0900
*************** static irqreturn_t macb_interrupt(int ir
*** 1992,2003 ****
  
  		if (status & MACB_BIT(ISR_ROVR)) {
  			/* We missed at least one packet */
- 			spin_lock(&bp->stats_lock);
  			if (macb_is_gem(bp))
  				bp->hw_stats.gem.rx_overruns++;
  			else
  				bp->hw_stats.macb.rx_overruns++;
- 			spin_unlock(&bp->stats_lock);
  
  			if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
  				queue_writel(queue, ISR, MACB_BIT(ISR_ROVR));
--- 1992,2001 ----
*************** static struct net_device_stats *gem_get_
*** 3086,3092 ****
  	if (!netif_running(bp->dev))
  		return nstat;
  
- 	spin_lock_irq(&bp->stats_lock);
  	gem_update_stats(bp);
  
  	nstat->rx_errors = (hwstat->rx_frame_check_sequence_errors +
--- 3084,3089 ----
*************** static struct net_device_stats *gem_get_
*** 3116,3122 ****
  	nstat->tx_aborted_errors = hwstat->tx_excessive_collisions;
  	nstat->tx_carrier_errors = hwstat->tx_carrier_sense_errors;
  	nstat->tx_fifo_errors = hwstat->tx_underrun;
- 	spin_unlock_irq(&bp->stats_lock);
  
  	return nstat;
  }
--- 3113,3118 ----
*************** static struct net_device_stats *gem_get_
*** 3124,3136 ****
  static void gem_get_ethtool_stats(struct net_device *dev,
  				  struct ethtool_stats *stats, u64 *data)
  {
! 	struct macb *bp = netdev_priv(dev);
  
! 	spin_lock_irq(&bp->stats_lock);
  	gem_update_stats(bp);
  	memcpy(data, &bp->ethtool_stats, sizeof(u64)
  			* (GEM_STATS_LEN + QUEUE_STATS_LEN * MACB_MAX_QUEUES));
- 	spin_unlock_irq(&bp->stats_lock);
  }
  
  static int gem_get_sset_count(struct net_device *dev, int sset)
--- 3120,3131 ----
  static void gem_get_ethtool_stats(struct net_device *dev,
  				  struct ethtool_stats *stats, u64 *data)
  {
! 	struct macb *bp;
  
! 	bp = netdev_priv(dev);
  	gem_update_stats(bp);
  	memcpy(data, &bp->ethtool_stats, sizeof(u64)
  			* (GEM_STATS_LEN + QUEUE_STATS_LEN * MACB_MAX_QUEUES));
  }
  
  static int gem_get_sset_count(struct net_device *dev, int sset)
*************** static struct net_device_stats *macb_get
*** 3180,3186 ****
  		return gem_get_stats(bp);
  
  	/* read stats from hardware */
- 	spin_lock_irq(&bp->stats_lock);
  	macb_update_stats(bp);
  
  	/* Convert HW stats into netdevice stats */
--- 3175,3180 ----
*************** static struct net_device_stats *macb_get
*** 3214,3220 ****
  	nstat->tx_carrier_errors = hwstat->tx_carrier_errors;
  	nstat->tx_fifo_errors = hwstat->tx_underruns;
  	/* Don't know about heartbeat or window errors... */
- 	spin_unlock_irq(&bp->stats_lock);
  
  	return nstat;
  }
--- 3208,3213 ----
*************** static int macb_probe(struct platform_de
*** 5070,5076 ****
  		}
  	}
  	spin_lock_init(&bp->lock);
- 	spin_lock_init(&bp->stats_lock);
  
  	/* setup capabilities */
  	macb_configure_caps(bp, macb_config);
--- 5063,5068 ----
```

```console
shell$ rm drivers/net/ethernet/cadence/macb_main.c.orig
```

##### Check drivers/net/ethernet/xilinx/xilinx_axienet_main.c

```console
shell$ diff -p linux-6.6.88/drivers/net/ethernet/xilinx/xilinx_axienet_main.c linux-6.6.70/drivers/net/ethernet/xilinx/xilinx_axienet_main.c 
*** linux-6.6.88/drivers/net/ethernet/xilinx/xilinx_axienet_main.c	2025-04-30 11:42:21.418354100 +0900
--- linux-6.6.70/drivers/net/ethernet/xilinx/xilinx_axienet_main.c	2025-03-31 13:53:19.922111600 +0900
*************** axienet_ethtools_set_coalesce(struct net
*** 1571,1582 ****
  		return -EFAULT;
  	}
  
- 	if (ecoalesce->rx_max_coalesced_frames > 255 ||
- 	    ecoalesce->tx_max_coalesced_frames > 255) {
- 		NL_SET_ERR_MSG(extack, "frames must be less than 256");
- 		return -EINVAL;
- 	}
- 
  	if (ecoalesce->rx_max_coalesced_frames)
  		lp->coalesce_count_rx = ecoalesce->rx_max_coalesced_frames;
  	if (ecoalesce->rx_coalesce_usecs)
--- 1571,1576 ----
*************** static int axienet_probe(struct platform
*** 2161,2167 ****
  
  	lp->phylink_config.dev = &ndev->dev;
  	lp->phylink_config.type = PHYLINK_NETDEV;
- 	lp->phylink_config.mac_managed_pm = true;
  	lp->phylink_config.mac_capabilities = MAC_SYM_PAUSE | MAC_ASYM_PAUSE |
  		MAC_10FD | MAC_100FD | MAC_1000FD;
  
--- 2155,2160 ----
```

```console
shell$ cp linux-6.6.70-xlnx-v2024.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c linux-6.6.88-xlnx-v2024.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c 
```

edit linux-6.6.88-xlnx-v2024.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c

```console
shell diff -p linux-6.6.88-xlnx-v2024.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c linux-6.6.70-xlnx-v2024.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
*** linux-6.6.88-xlnx-v2024.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c	2025-05-01 13:27:15.645058000 +0900
--- linux-6.6.70-xlnx-v2024.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c	2025-04-30 12:26:42.863061700 +0900
*************** axienet_ethtools_set_coalesce(struct net
*** 2855,2866 ****
  		return -EFAULT;
  	}
  
- 	if (ecoalesce->rx_max_coalesced_frames > 255 ||
- 	    ecoalesce->tx_max_coalesced_frames > 255) {
- 		NL_SET_ERR_MSG(extack, "frames must be less than 256");
- 		return -EINVAL;
- 	}
- 
  	if (ecoalesce->rx_max_coalesced_frames)
  		lp->coalesce_count_rx = ecoalesce->rx_max_coalesced_frames;
  	if (ecoalesce->rx_coalesce_usecs)
--- 2855,2860 ----
*************** static int axienet_probe(struct platform
*** 4509,4515 ****
  
  		lp->phylink_config.dev = &ndev->dev;
  		lp->phylink_config.type = PHYLINK_NETDEV;
- 		lp->phylink_config.mac_managed_pm = true;
  		lp->phylink_config.mac_capabilities = MAC_SYM_PAUSE | MAC_ASYM_PAUSE;
  
  		if (lp->axienet_config->mactype == XAXIENET_10G_25G) {
--- 4503,4508 ----
```

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ rm drivers/net/ethernet/xilinx/xilinx_axienet_main.c.orig
shell$ rm drivers/net/ethernet/xilinx/xilinx_axienet_main.c.rej
shell$ git add --all
shell$ git commit -m "[patch] 230_drivers-net-ethernet.patch"
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/230_drivers-net-ethernet.patch
```

#### patches/linux-6.6.88-xlnx-v2024.2/origin_patch.sh

##### Make patches/linux-6.6.88-xlnx-v2024.2/origin_patch.sh

```console
shell$ cp patches/linux-6.6.70-xlnx-v2024.2/origin_patch.sh patches/linux-6.6.88-xlnx-v2024.2
```

##### Check patches/linux-6.6.88-xlnx-v2024.2/origin_patch.sh

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout v6.6.88
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-origin
shell$ sh ../patches/linux-6.6.88-xlnx-v2024.2/origin_patch.sh 
```

#### patches/linux-6.6.88-xlnx-v2024.2/001_Makefile.patch

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout v6.6.88
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-zynqmp-fpga
```

edit Makefile

```console
shell$ git diff Makefile 
diff --git a/Makefile b/Makefile
index b1dfe3df7..dc29b0072 100644
--- a/Makefile
+++ b/Makefile
@@ -2,7 +2,7 @@
 VERSION = 6
 PATCHLEVEL = 6
 SUBLEVEL = 88
-EXTRAVERSION =
+EXTRAVERSION = -zynqmp-fpga
 NAME = Pinguïn Aangedreven
 
 # *DOCUMENTATION*
```

```console
shell$ git add Makefile
shell$ git commit -m "[patch] 001_Makefile.patch"
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/001_Makefile.patch
shell$ git checkout v6.6.88
shell$ git branch -D linux-6.6.88-xlnx-v2024.2-zynqmp-fpga
```


#### patches/linux-6.6.88-xlnx-v2024.2/zynqmp_fpga_patch.sh

##### Make patches/linux-6.6.88-xlnx-v2024.2/zynqmp_fpga_patch.sh

```console
shell$ cp patches/linux-6.6.70-xlnx-v2024.2/zynqmp_fpga_patch.sh patches/linux-6.6.88-xlnx-v2024.2
```
##### Check patches/linux-6.6.88-xlnx-v2024.2/zynqmp_fpga_patch.sh

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout v6.6.88
shell$ git checkout -b linux-6.6.88-xlnx-v2024.2-zynqmp-fpga
shell$ sh ../patches/linux-6.6.88-xlnx-v2024.2/zynqmp_fpga_patch.sh
```

### Make linux-6.6.88-zynqmp-fpga-generic

```console
shell$ sh scripts/build-linux-6.6.88-zynqmp-fpga-generic.sh
  :
  :
  :
  CC      drivers/clk/clk-si5324.o
drivers/clk/clk-si5324.c: In function ‘si5324_dt_parse’:
drivers/clk/clk-si5324.c:883:64: error: macro "of_property_for_each_u32" passed 5 arguments, but takes just 3
  883 |  of_property_for_each_u32(np, "silabs,pll-source", prop, p, num) {
      |                                                                ^
In file included from ./include/linux/clk-provider.h:9,
                 from drivers/clk/clk-si5324.c:13:
./include/linux/of.h:1400: note: macro "of_property_for_each_u32" defined here
 1400 | #define of_property_for_each_u32(np, propname, u)   \
      | 
drivers/clk/clk-si5324.c:883:2: error: ‘of_property_for_each_u32’ undeclared (first use in this function); did you mean ‘of_property_read_u32’?
  883 |  of_property_for_each_u32(np, "silabs,pll-source", prop, p, num) {
      |  ^~~~~~~~~~~~~~~~~~~~~~~~
      |  of_property_read_u32
drivers/clk/clk-si5324.c:883:2: note: each undeclared identifier is reported only once for each function it appears in
drivers/clk/clk-si5324.c:883:26: error: expected ‘;’ before ‘{’ token
  883 |  of_property_for_each_u32(np, "silabs,pll-source", prop, p, num) {
      |                          ^                                       ~
      |                          ;
drivers/clk/clk-si5324.c:960:1: warning: label ‘put_child’ defined but not used [-Wunused-label]
  960 | put_child:
      | ^~~~~~~~~
drivers/clk/clk-si5324.c:870:6: warning: unused variable ‘val’ [-Wunused-variable]
  870 |  u32 val;
      |      ^~~
drivers/clk/clk-si5324.c:869:6: warning: unused variable ‘num’ [-Wunused-variable]
  869 |  int num = 0;
      |      ^~~
drivers/clk/clk-si5324.c:868:16: warning: unused variable ‘p’ [-Wunused-variable]
  868 |  const __be32 *p;
      |                ^
drivers/clk/clk-si5324.c:867:19: warning: unused variable ‘prop’ [-Wunused-variable]
  867 |  struct property *prop;
      |                   ^~~~
```

### Fix patches/linux-6.6.88-xlnx-v2024.2

#### 

```console
shell$ cd patches/linux-6.6.88-xlnx-v2024.2
shell$ grep -H '\.orig' *.patch
201_drivers-cdx.patch:diff --git a/drivers/cdx/cdx.c.orig b/drivers/cdx/cdx.c.orig
201_drivers-cdx.patch:+++ b/drivers/cdx/cdx.c.orig
216_drivers-irqchip.patch:diff --git a/drivers/irqchip/irqchip.c.orig b/drivers/irqchip/irqchip.c.orig
216_drivers-irqchip.patch:+++ b/drivers/irqchip/irqchip.c.orig
223_drivers-media-usb.patch:diff --git a/drivers/media/usb/uvc/uvcvideo.h.orig b/drivers/media/usb/uvc/uvcvideo.h.orig
223_drivers-media-usb.patch:+++ b/drivers/media/usb/uvc/uvcvideo.h.orig
230_drivers-net-ethernet.patch:diff --git a/drivers/net/ethernet/cadence/macb.h.orig b/drivers/net/ethernet/cadence/macb.h.orig
230_drivers-net-ethernet.patch:+++ b/drivers/net/ethernet/cadence/macb.h.orig
236_drivers-pci.patch:diff --git a/drivers/pci/controller/pcie-xilinx-cpm.c.orig b/drivers/pci/controller/pcie-xilinx-cpm.c.orig
236_drivers-pci.patch:+++ b/drivers/pci/controller/pcie-xilinx-cpm.c.orig
242_drivers-remoteproc.patch:diff --git a/drivers/remoteproc/remoteproc_core.c.orig b/drivers/remoteproc/remoteproc_core.c.orig
242_drivers-remoteproc.patch:+++ b/drivers/remoteproc/remoteproc_core.c.orig
246_drivers-spi.patch:diff --git a/drivers/spi/spi-cadence-quadspi.c.orig b/drivers/spi/spi-cadence-quadspi.c.orig
246_drivers-spi.patch:+++ b/drivers/spi/spi-cadence-quadspi.c.orig
246_drivers-spi.patch:diff --git a/drivers/spi/spi-zynq-qspi.c.orig b/drivers/spi/spi-zynq-qspi.c.orig
246_drivers-spi.patch:+++ b/drivers/spi/spi-zynq-qspi.c.orig
249_drivers-tty.patch:diff --git a/drivers/tty/serial/xilinx_uartps.c.orig b/drivers/tty/serial/xilinx_uartps.c.orig
249_drivers-tty.patch:+++ b/drivers/tty/serial/xilinx_uartps.c.orig
250_drivers-ufs.patch:diff --git a/drivers/ufs/core/ufshcd.c.orig b/drivers/ufs/core/ufshcd.c.orig
250_drivers-ufs.patch:+++ b/drivers/ufs/core/ufshcd.c.orig
250_drivers-ufs.patch:diff --git a/include/ufs/ufshcd.h.orig b/include/ufs/ufshcd.h.orig
250_drivers-ufs.patch:+++ b/include/ufs/ufshcd.h.orig
260_drivers-usb-core.patch:diff --git a/drivers/usb/core/hub.c.orig b/drivers/usb/core/hub.c.orig
260_drivers-usb-core.patch:+++ b/drivers/usb/core/hub.c.orig
262_drivers-usb-dwc3.patch:diff --git a/drivers/usb/dwc3/core.c.orig b/drivers/usb/dwc3/core.c.orig
262_drivers-usb-dwc3.patch:+++ b/drivers/usb/dwc3/core.c.orig
262_drivers-usb-dwc3.patch:diff --git a/drivers/usb/dwc3/core.h.orig b/drivers/usb/dwc3/core.h.orig
262_drivers-usb-dwc3.patch:+++ b/drivers/usb/dwc3/core.h.orig
262_drivers-usb-dwc3.patch:diff --git a/drivers/usb/dwc3/gadget.c.orig b/drivers/usb/dwc3/gadget.c.orig
262_drivers-usb-dwc3.patch:+++ b/drivers/usb/dwc3/gadget.c.orig
263_drivers-usb-gadget.patch:diff --git a/drivers/usb/gadget/function/f_tcm.c.orig b/drivers/usb/gadget/function/f_tcm.c.orig
263_drivers-usb-gadget.patch:+++ b/drivers/usb/gadget/function/f_tcm.c.orig
999_other-document.patch:diff --git a/MAINTAINERS.orig b/MAINTAINERS.orig
999_other-document.patch:+++ b/MAINTAINERS.orig
```

#### 201_drivers-cdx.patch

```console
shell$ cd linux-6.6.88-xlnx-v2024.2
shell$ git checkout v6.6.88
shell$ git checkout -b git checkout -b linux-6.6.88-xlnx-v2024.2-2
   :
   :
   :
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/201_drivers-cdx.patch
shell$ git rm --hard drivers/cdx/cdx.c.orig
shell$ git add --all
shell$ git commit -m "[patch] 201_drivers-cdx.patch"
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/201_drivers-cdx.patch 
```

#### 216_drivers-irqchip.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/216_drivers-irqchip.patch
shell$ git add --all
shell$ git commit -m '[patch] 216_drivers-irqchip.patch'
shell$ git rm drivers/irqchip/irqchip.c.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/216_drivers-irqchip.patch
```

#### 223_drivers-media-usb.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/223_drivers-media-usb.patch
shell$ git add --all
shell$ git commit -m '[patch] 223_drivers-media-usb.patch'
shell$ git rm drivers/media/usb/uvc/uvcvideo.h.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/223_drivers-media-usb.patch
```

#### 230_drivers-net-ethernet.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/230_drivers-net-ethernet.patch
shell$ git add --all
shell$ git commit -m '[patch] 230_drivers-net-ethernet.patch'
shell$ git rm drivers/net/ethernet/cadence/macb.h.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/230_drivers-net-ethernet.patch
```

#### 236_drivers-pci.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/236_drivers-pci.patch
shell$ git add --all
shell$ git commit -m '[patch] 236_drivers-pci.patch'
shell$ git rm drivers/pci/controller/pcie-xilinx-cpm.c.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/236_drivers-pci.patch
```

#### 242_drivers-remoteproc.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/242_drivers-remoteproc.patch
shell$ git add --all
shell$ git commit -m '[patch] 242_drivers-remoteproc.patch'
shell$ git rm drivers/remoteproc/remoteproc_core.c.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/242_drivers-remoteproc.patch
```

#### 249_drivers-tty.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/249_drivers-tty.patch
shell$ git add --all
shell$ git commit -m '[patch] 249_drivers-tty.patch'
shell$ git rm drivers/tty/serial/xilinx_uartps.c.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/249_drivers-tty.patch
```
#### 250_drivers-ufs.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/250_drivers-ufs.patch
shell$ git add --all
shell$ git commit -m '[patch] 250_drivers-ufs.patch'
shell$ git rm drivers/ufs/core/ufshcd.c.orig
shell$ git rm include/ufs/ufshcd.h.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/250_drivers-ufs.patch
```

#### 260_drivers-usb-core.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/260_drivers-usb-core.patch
shell$ git add --all
shell$ git commit -m '[patch] 260_drivers-usb-core.patch'
shell$ git rm drivers/usb/core/hub.c.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/260_drivers-usb-core.patch
```

#### 262_drivers-usb-dwc3.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/262_drivers-usb-dwc3.patch
shell$ git add --all
shell$ git commit -m '[patch] 262_drivers-usb-dwc3.patch'
shell$ git rm drivers/usb/dwc3/core.c.orig
shell$ git rm drivers/usb/dwc3/core.h.orig
shell$ git rm drivers/usb/dwc3/gadget.c.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/262_drivers-usb-dwc3.patch
```

#### 263_drivers-usb-gadget.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/263_drivers-usb-gadget.patch
shell$ git add --all
shell$ git commit -m '[patch] 263_drivers-usb-gadget.patch'
shell$ git rm drivers/usb/gadget/function/f_tcm.c.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/263_drivers-usb-gadget.patch
```

#### 999_other-document.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/999_other-document.patch
shell$ git add --all
shell$ git commit -m '[patch] 999_other-document.patch'
shell$ git rm MAINTAINERS.orig
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/999_other-document.patch
```

#### 202_drivers-clk.patch

```console
shell$ patch -p1 < ../patches/linux-6.6.88-xlnx-v2024.2/202_drivers-clk.patch
shell$ git add --all
shell$ git commit -m '[patch] 202_drivers-clk.patch'
```

modify drivers/clk/clk-si5324.c

``console
shell$ git diff drivers/clk/clk-si5324.c
diff --git a/drivers/clk/clk-si5324.c b/drivers/clk/clk-si5324.c
index 0cefb5823..72e67bb8c 100644
--- a/drivers/clk/clk-si5324.c
+++ b/drivers/clk/clk-si5324.c
@@ -864,8 +864,6 @@ static int si5324_dt_parse(struct i2c_client *client)
 {
 	struct device_node *child, *np = client->dev.of_node;
 	struct si5324_platform_data *pdata;
-	struct property *prop;
-	const __be32 *p;
 	int num = 0;
 	u32 val;
 
@@ -880,18 +878,13 @@ static int si5324_dt_parse(struct i2c_client *client)
 	 * property silabs,pll-source : <num src>, [<..>]
 	 * allow to selectively set pll source
 	 */
-	of_property_for_each_u32(np, "silabs,pll-source", prop, p, num) {
+	of_property_for_each_u32(np, "silabs,pll-source", val) {
 		if (num >= 1) {
 			dev_err(&client->dev,
 				"invalid pll %d on pll-source prop\n", num);
 			return -EINVAL;
 		}
-		p = of_prop_next_u32(prop, p, &val);
-		if (!p) {
-			dev_err(&client->dev,
-				"missing pll-source for pll %d\n", num);
-			return -EINVAL;
-		}
+                num++;
 
 		switch (val) {
 		case 0:
````

```console
shell$ git add drivers/clk/clk-si5324.c
shell$ git commit --amend --no-edit
shell$ git diff HEAD^ > ../patches/linux-6.6.88-xlnx-v2024.2/202_drivers-clk.patch
```
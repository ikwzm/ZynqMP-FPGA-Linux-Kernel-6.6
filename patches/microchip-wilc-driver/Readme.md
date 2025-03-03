patches/microchip-wilc-driver
------------------------------------------------------------------------------------

This directory provides the Linux Kernel Driver for the WiFi module in the Ultra96-V2.

### WiFi Module Details

 * Manufacturer Part Number: ATWILC3000-MR110CA
 * Manufacturer            : MICROCHIP
 * URL                     : https://www.microchip.com/en-us/product/atwilc3000
 
### Linux Kernel Driver

#### Tosainu Version 

Tosainu has modified microchip's Linux Kernel to work with Ultra96-V2 on github.

 * https://github.com/Tosainu/linux-at91

The branch for linux kernel 6.6 is ```wilc3000-ultra96-6.6```.

```Kconfig```, ```Makefile```, and ```wilc1000/``` in this directory were obtained as follows

```console
shell$ git clone --depth 1 --branch wilc3000-ultra96-6.6 https://github.com/Tosainu/linux-at91 linux-at91-tosainu
shell$ cp -r linux-at91-tosainu/drivers/net/wireless/microchip/* .
```
### Thanks

Thanks to Tosainu and microchip.



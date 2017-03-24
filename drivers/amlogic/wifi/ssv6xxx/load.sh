#/bin/bash

echo "=================================================="
echo "1.Copy firmware"
echo "=================================================="
cp image/* /lib/firmware/

echo "=================================================="
echo "1.Unload Module"
echo "=================================================="
./unload.sh

echo "=================================================="
echo "2.Set Hardware Capability"
echo "=================================================="
./ssvcfg.sh

echo "=================================================="
echo "3.Load MMC Module"
echo "=================================================="
modprobe mmc_core sdiomaxclock=25000000
modprobe sdhci
modprobe sdhci-pci
modprobe mmc_block

echo "=================================================="
echo "4.Load SSV6200 Driver"
echo "=================================================="
#modprobe ssv6200_sdio

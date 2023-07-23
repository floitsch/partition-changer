# Partition Changer
Changes the partition layout of an ESP32 OTA.

Assuming that ota1 is after ota0 changes the partition size to
something bigger. The bin is only changing the partition size
and then letting the OTA rollback mechanism go back to the
previous firmware. Since OTA0 is before OTA1 and we only
increased the sizes of partitions, OTA0 should still be safe to
use.

## sdkconfig

Note that the sdkconfig has the following line:
```
CONFIG_SPI_FLASH_DANGEROUS_WRITE_ALLOWED=y
```

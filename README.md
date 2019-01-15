# Getting Started

```bash
cd /usr/src
sudo chown . $USER.$USER
git clone https://github.com/jcomeauictx/firmware-mod-kit.git
(cd firmware-mod-kit/src && make)
git clone https://github.com/devttys0/binwalk.git
(cd binwalk && python setup.py build)
firmware-mod-kit/extract-firmware.sh /tmp/wbr1310_revD_firmware_413.bin /tmp/wbr1310_revD_firmware_413
```

# Bugs

*  `extract_firmware.sh` does not set `COMPRESSION_HEADER` in logs/config.log.
   if `grep -c 7zip /tmp/wbr1310_revD_firmware_413.bin`, for example, shows
   some large number, edit the file and set `COMPRESSION_HEADER` to '7zip'.

*  `build_firmware.sh` does not properly build images with the '7zip'
   compression header; I see an extra header in the new firmware. however,
   on the WBR-1310 router it doesn't seem to matter.

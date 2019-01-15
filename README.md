# Getting Started

```bash
cd /usr/src
sudo chown . $USER.$USER
git clone https://github.com/jcomeauictx/firmware-mod-kit.git
(cd firmware-mod-kit && make)
git clone https://github.com/devttys0/binwalk.git
(cd binwalk && python setup.py build)
firmware-mod-kit/extract-firmware.sh /tmp/wbr1310_revD_firmware_413.bin /tmp/wbr1310_revD_firmware_413
```

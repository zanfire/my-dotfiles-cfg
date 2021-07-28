

# See physical volume
lvm pvdisplay

# See logical volume
lvm lvdisplay

# initramfs
genkernel --luks --lvm initramfs

# grub update config
grub-mkconfig -o /boot/grub/grub.cfg

# Dracut configuration


dracut --hostonly --kver 5.10.52-gentoo --force

rd.luks.allow-discards

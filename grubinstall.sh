arch-chroot
mkdir /boot/efi
mount /dev/sda1 /boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
pacman -Sy os-prober

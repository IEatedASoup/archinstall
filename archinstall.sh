
timedatectl set-ntp true
pacman -S figlet vim
figlet set up your partitions
cfdisk /dev/sda
mkfs.ext4 /dev/sda
mount /dev/sda2
pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
locale-gen
figlet enter hostname now
vim /etc/hostname
mkinitcpio -P
figlet set root password with command passwd
figlet installing grub
pacman -S grub efibootmgr
mkdir /boot/efi
mount /dev/sda1 /boot/efi
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg

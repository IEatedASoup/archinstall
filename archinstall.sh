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
figlet set root password
passwd
figlet ok, install your bootloader and you're good!

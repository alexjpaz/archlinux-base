cp ./chroot.sh /mnt
#cp ~/.ssh/authorized_keys /mnt
arch-chroot /mnt ./chroot.sh "$DISK"

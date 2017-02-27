# you can find your closest server from: https://www.archlinux.org/mirrorlist/all/
echo 'Server = http://mirror.internode.on.net/pub/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
mount "$PARTITION" /mnt
pacman -Syy
# would recommend to use linux-lts kernel if you are running a server environment, otherwise just use "linux"
pacstrap /mnt $(pacman -Sqg base | sed 's/^linux$/&-lts/') base-devel grub openssh sudo ntp vim


mkdir -p /home/namespace/box

mkdir /home/namespace/box/bin
mkdir /home/namespace/box/lib
mkdir /home/namespace/box/proc

cp -v /usr/bin/kill /home/namespace/box/bin
cp -v /usr/bin/ps /home/namespace/box/bin
cp -v /bin/bash /home/namespace/box/bin
cp -v /bin/ls /home/namespace/box/bin

cp -r /lib/ /home/namespace/box

mount -t proc proc /home/namespace/box/proc 

# uncomment to add data volume
# mkdir /home/namespace/box/data
# mount --bind /tmp/ /home/namespace/box/data

# uncomment to protect PIDs
#unshare --pid --fork --mount-proc=/home/namespace/box/proc \
chroot /home/namespace/box /bin/bash

# Uncomment to release
#umount /home/namespace/box/proc
#umount /home/namespace/box/data

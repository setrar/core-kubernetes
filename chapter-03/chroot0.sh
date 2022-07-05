mkdir -p /home/namespace/box


# -------- Populate Binaries
mkdir /home/namespace/box/bin

# Add shell tools
cp -v /bin/bash /home/namespace/box/bin
cp -v /bin/expr /home/namespace/box/bin

# Add network tools
cp -v /bin/ip /home/namespace/box/bin

# Add disk tools
cp -v /bin/ls /home/namespace/box/bin
cp -v /bin/mount /home/namespace/box/bin
cp -v /bin/umount /home/namespace/box/bin

# Add process tools
cp -v /usr/bin/kill /home/namespace/box/bin
cp -v /usr/bin/ps /home/namespace/box/bin
cp -v /bin/pidof /home/namespace/box/bin

# -------- Populate Libraries
mkdir /home/namespace/box/lib
cp -r /lib/ /home/namespace/box

ARCH=$(uname --machine)
if [ "${ARCH}" == "x86_64" ]; then
  mkdir /home/namespace/box/lib64
  cp -r /lib64/ /home/namespace/box
fi

# Uncomment to populate data volume
mkdir /home/namespace/box/data
mount --bind /tmp/ /home/namespace/box/data

# -------- Populate Proc Folder
mkdir /home/namespace/box/proc
mount --type proc proc /home/namespace/box/proc

# -------- Protect Namespaces
unshare --mount --uts --ipc --net --pid --fork chroot /home/namespace/box /bin/bash

# Issue the below command to capture the bash's PID
expr $(pidof unshare) + 1

# finally mount proc to isolate PIDs
mount --type proc none /proc

# Release
umount /home/namespace/box/proc
umount /home/namespace/box/data

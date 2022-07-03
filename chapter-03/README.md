# Chapter:heavy_minus_sign::zero::three: Let's build a Pod

## Create a cluster

```
kind create cluster
```
> Returns

<img src="../images/kind-return.png" width=500 > </img>

```
kubectl config get-contexts
```
> Returns
```
CURRENT   NAME                         CLUSTER                      AUTHINFO                     NAMESPACE
...
*         kind-kind                    kind-kind                    kind-kind                    
```

## Run pod


- [ ] Get onto the control plane container (in a separate window)

* hop on the container

```
docker container exec --interactive --tty kind-control-plane /bin/bash
````

* fetch how many processes before creating pod

```
root@kind-control-plane:/# ps -ax | wc -l
```
> Returns
```
35
```


- [ ] create the pod

```
kubectl create -f pod.yaml
```

* fecth how many processes before creating pod

```
root@kind-control-plane:/# ps -ax | wc -l
```
> Returns
```
38
```

- [ ] Copy `chroot0.sh` to the `kind-control-plane` container

```
CTR_ID=`docker container ls --quiet`; docker container cp chroot0.sh ${CTR_ID}:/home/chroot0.sh
```

### Proper `chroot` Exit

```
umount /home/namespace/box/proc
```
```
umount /home/namespace/box/data
```

:round_pushpin: from INSIDE your running chroot0 script, get its PID, by running

```
root@kind-control-plane:/# echo $$
```
> Returns
```
9580
```

```
root@kind-control-plane:/# 
```
> Run
```
mkdir -p /sys/fs/cgroup/memory/chroot0 \
echo "10" > /sys/fs/cgroup/memory/chroot0/memory.limit_in_bytes \
echo "0" > /sys/fs/cgroup/memory/chroot0/memory.swappiness \
echo 25266 > /sys/fs/cgroup/memory/chroot0/tasks
```

:x: bash: tasks: Permission denied

# References

- [ ] [http://mng.bz/8M12](https://github.com/kubernetes/kubernetes/blob/master/pkg/volume/util/subpath/subpath_linux.go#L93)
- [ ] [chroot: failed to run command ‘/bin/bash’: No such file or directory](https://unix.stackexchange.com/questions/128046/chroot-failed-to-run-command-bin-bash-no-such-file-or-directory)
- [ ] [ArchLinux - chroot](https://wiki.archlinux.org/title/chroot)

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

- [ ] [http://mng.bz/8M12](https://github.com/kubernetes/kubernetes/blob/master/pkg/volume/util/subpath/subpath_linux.go#L93)

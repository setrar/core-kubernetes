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
          eks_education-eks-QdOgosSZ   eks_education-eks-QdOgosSZ   eks_education-eks-QdOgosSZ   
          grappe-mineure.stp.uof.ca    grappe-mineure.stp.uof.ca    grappe-mineure.stp.uof.ca    istio-system
*         kind-kind                    kind-kind                    kind-kind                    
          qa.moodle.k8s.local          qa.moodle.k8s.local          qa.moodle.k8s.local 
```

- [ ] [http://mng.bz/8M12](https://github.com/kubernetes/kubernetes/blob/master/pkg/volume/util/subpath/subpath_linux.go#L93)

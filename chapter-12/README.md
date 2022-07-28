# Chapter :one::two: - etcd and the control plane


## :cl: Local `etcd`

- [ ] Add text

```
etcdctl put greeting "Hello, etcd"
```
> Outputs
```json
{
  "level": "warn",
  "ts": "2022-07-28T13:02:00.478+0200",
  "logger": "etcd-client",
  "caller": "v3/retry_interceptor.go:62",
  "msg": "retrying of unary invoker failed",
  "target": "etcd-endpoints://0x140001ca000/127.0.0.1:2379",
  "attempt": 0,
  "error": "rpc error: code = DeadlineExceeded desc = latest balancer error: last connection error: connection error: desc = \"transport: Error while dialing dial tcp 127.0.0.1:2379: connect: connection refused\""
}
```
Error: context deadline exceeded

- [ ] Start etcd locally MacOS

```
sudo brew services start etcd
```
> Outputs
```
Password:
Warning: Taking root:admin ownership of some etcd paths:
  /opt/homebrew/Cellar/etcd/3.5.4/bin
  /opt/homebrew/Cellar/etcd/3.5.4/bin/etcd
  /opt/homebrew/opt/etcd
  /opt/homebrew/opt/etcd/bin
  /opt/homebrew/var/homebrew/linked/etcd
This will require manual removal of these paths using `sudo rm` on
brew upgrade/reinstall/uninstall.
Warning: etcd must be run as non-root to start at user login!
==> Successfully started `etcd` (label: homebrew.mxcl.etcd)
```

- [ ] Do again

```
etcdctl put greeting "Hello, etcd"
```
> Outputs
```
OK
```

- [ ] Pull again

```
etcdctl get greeting    
```
> Outputs
```
greeting
Hello, etcd
```

```
kubectl exec --stdin --tty --namespace kube-system etcd-manager-main-ip-172-20-57-162.ca-central-1.compute.internal --container etcd-manager -- sh
```


# References

- [ ] [etcd - Quickstart](https://etcd.io/docs/v3.5/quickstart/)

- [ ] [Operations guide - Disaster recovery](https://etcd.io/docs/v3.5/op-guide/recovery)

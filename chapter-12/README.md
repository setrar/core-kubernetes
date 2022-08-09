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

- [ ] get onto the ETCD pod

```
CTRL_PLANE_NODE=$(k get nodes | grep control-plane | awk '{print $1}')
```

```
kubectl exec --stdin --tty \
    --namespace kube-system \
    etcd-manager-main-${CTRL_PLANE_NODE} \
    --container etcd-manager -- sh
```


```
export ETCDCTL_API=3
ETCD_ENDPOINT_MAIN="https://localhost:4001"
ETCD_ENDPOINT_EVENTS="https://localhost:4002"
CA_FILE="/srv/kubernetes/ca.crt"
CERT_FILE="/srv/kubernetes/kubelet-server.crt"
KEY_FILE="/srv/kubernetes/kubelet-server.key"
ETCD_BIN="/var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/29/fs/opt/etcd-v3.5.1-linux-amd64/etcdctl"
ETCD_CMD="${ETCD_BIN} --cacert ${CA_FILE} --cert ${CERT_FILE} --key ${KEY_FILE}"
```

```
sudo ${ETCD_CMD} --endpoints ${ETCD_ENDPOINT_MAIN} check perf
```

```
rev=`${ETCD_CMD} --endpoints ${ETCD_ENDPOINT_MAIN} endpoint status --write-out="json" | egrep -o '"revision":[0-9]*' | egrep -o '[0-9]*'`
${ETCD_CMD} --endpoints ${ETCD_ENDPOINT_MAIN} compact $rev
${ETCD_CMD} --endpoints ${ETCD_ENDPOINT_MAIN} defrag
${ETCD_CMD} --endpoints ${ETCD_ENDPOINT_MAIN} alarm disarm
```

```
sudo \
  /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/29/fs/opt/etcd-v3.5.1-linux-amd64/etcdctl \
  --endpoints="https://localhost:2379" \
  --cacert="/etc/kubernetes/pki/etcd-manager-main/etcd-manager-ca.crt" \
  --cert="/etc/kubernetes/pki/etcd-manager-main/etcd-manager-ca.crt" \
  --key="/etc/kubernetes/pki/etcd-manager-main/etcd-manager-ca.key" check perf
```
> Outputs
```json
{
  "level": "warn",
  "ts": "2022-07-29T08:36:12.575Z",
  "logger": "etcd-client",
  "caller": "v3/retry_interceptor.go:62",
  "msg": "retrying of unary invoker failed",
  "target": "etcd-endpoints://0xc0003d8a80/localhost:2379",
  "attempt": 0,
  "error": "rpc error: code = DeadlineExceeded desc = latest balancer error: last connection error: connection error: desc = \"transport: Error while dialing dial tcp 127.0.0.1:2379: connect: connection refused\""
}
```
Error: context deadline exceeded


etcd-command

```
/bin/sh -c mkfifo /tmp/pipe; (tee -a /var/log/etcd.log < /tmp/pipe & ) ; \
exec /etcd-manager --backup-store=s3://grappes-kops/grappe-mineure.stp.uof.ca/backups/etcd/main \
--client-urls=https://__name__:4001 \
--cluster-name=etcd \
--containerized=true \
--dns-suffix=.internal.grappe-mineure.stp.uof.ca \
--grpc-port=3996 \
--peer-urls=https://__name__:2380 \
--quarantine-client-urls=https://__name__:3994 \
--v=6 \
--volume-name-tag=k8s.io/etcd/main --volume-provider=aws --volume-tag=k8s.io/etcd/main \
--volume-tag=k8s.io/role/master=1 --volume-tag=kubernetes.io/cluster/grappe-mineure.stp.uof.ca=owned > /tmp/pipe 2>&1
```

Mounts

```
/rootfs
from rootfs (rw)
/run
from run (rw)
/etc/kubernetes/pki/etcd-manager
from pki (rw)
/var/log/etcd.log
from varlogetcd (rw)
```

## kubectl get componentstatuses

```
kubectl get --raw='/readyz?verbose'
```
> Outputs
```
[+]ping ok
[+]log ok
[+]etcd ok
[+]informer-sync ok
[+]poststarthook/start-kube-apiserver-admission-initializer ok
[+]poststarthook/generic-apiserver-start-informers ok
[+]poststarthook/priority-and-fairness-config-consumer ok
[+]poststarthook/priority-and-fairness-filter ok
[+]poststarthook/start-apiextensions-informers ok
[+]poststarthook/start-apiextensions-controllers ok
[+]poststarthook/crd-informer-synced ok
[+]poststarthook/bootstrap-controller ok
[+]poststarthook/rbac/bootstrap-roles ok
[+]poststarthook/scheduling/bootstrap-system-priority-classes ok
[+]poststarthook/priority-and-fairness-config-producer ok
[+]poststarthook/start-cluster-authentication-info-controller ok
[+]poststarthook/aggregator-reload-proxy-client-cert ok
[+]poststarthook/start-kube-aggregator-informers ok
[+]poststarthook/apiservice-registration-controller ok
[+]poststarthook/apiservice-status-available-controller ok
[+]poststarthook/kube-apiserver-autoregistration ok
[+]autoregister-completion ok
[+]poststarthook/apiservice-openapi-controller ok
[+]shutdown ok
readyz check passed
```


# References

- [ ] [etcd - Quickstart](https://etcd.io/docs/v3.5/quickstart/)

- [ ] [Operations guide - Disaster recovery](https://etcd.io/docs/v3.5/op-guide/recovery)

- [ ] [ETCD database space / quota exceeded, goes into maintenance mode](https://github.com/kubernetes/kops/issues/4005#issuecomment-349048006)

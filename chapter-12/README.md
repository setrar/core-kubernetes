# Chapter :one::two: - etcd and the control plane


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



# References

- [ ] [etcd - Quickstart](https://etcd.io/docs/v3.5/quickstart/)

- [ ] [Operations guide - Disaster recovery](https://etcd.io/docs/v3.5/op-guide/recovery)

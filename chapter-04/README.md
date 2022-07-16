docker container exec --interactive --tty kind-control-plane bash
root@kind-control-plane:/# 
root@kind-control-plane:/# 
root@kind-control-plane:/# ls -l
total 52
lrwxrwxrwx   1 root root    7 Apr 22  2021 bin -> usr/bin
drwxr-xr-x   2 root root 4096 Apr 19  2021 boot
drwxr-xr-x   9 root root 2820 Jul 16 10:36 dev
drwxr-xr-x   1 root root 4096 Jul 16 10:36 etc
drwxr-xr-x   1 root root 4096 Jul  5 10:46 home
drwxr-xr-x   1 root root 4096 Jul  4 21:32 kind
lrwxrwxrwx   1 root root    7 Apr 22  2021 lib -> usr/lib
drwxr-xr-x   2 root root 4096 Apr 22  2021 media
drwxr-xr-x   2 root root 4096 Apr 22  2021 mnt
drwxr-xr-x   1 root root 4096 May 22  2021 opt
dr-xr-xr-x 212 root root    0 Jul 16 10:36 proc
drwx------   1 root root 4096 Jul  5 10:55 root
drwxr-xr-x  11 root root  240 Jul 16 10:36 run
lrwxrwxrwx   1 root root    8 Apr 22  2021 sbin -> usr/sbin
drwxr-xr-x   2 root root 4096 Apr 22  2021 srv
dr-xr-xr-x  13 root root    0 Jul 16 10:36 sys
drwxrwxrwt   2 root root   40 Jul 16 10:36 tmp
drwxr-xr-x   1 root root 4096 Apr 22  2021 usr
drwxr-xr-x  11 root root 4096 Jul  4 21:32 var
root@kind-control-plane:/# systemctl status
● kind-control-plane
    State: running
     Jobs: 0 queued
   Failed: 0 units
    Since: Sat 2022-07-16 10:36:33 EAT; 8h ago
   CGroup: /
           ├─init.scope 
           │ ├─    1 /sbin/init
           │ ├─51673 bash
           │ ├─51738 systemctl status
           │ └─51739 (pager)
           ├─system.slice 
           │ ├─containerd.service …
           │ │ ├─ 102 /usr/local/bin/containerd
           │ │ ├─ 278 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 2dac3e5ed51b53f3da4c96b655a1d1380265ca4597ad63fd4d8d0faaf53f869d -address /run/containerd/containerd.sock
           │ │ ├─ 279 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id e9550313a52a4576ccd7c1ac0a76493d729869ff4c60652c5993c2e35f746678 -address /run/containerd/containerd.sock
           │ │ ├─ 280 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id b3c1257993db12006b3f4232869fb4dfb24db32b534a00ec6e37b2041a9c5796 -address /run/containerd/containerd.sock
           │ │ ├─ 526 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 6ad0c6b8b7a7d55d2bdbe9f3d9857a57065be4e569295b8adee3afe93757a052 -address /run/containerd/containerd.sock
           │ │ ├─ 664 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 426f1c5b6812a197365867eae2a42e48be4982f82328b778794c4be84842d168 -address /run/containerd/containerd.sock
           │ │ ├─ 770 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 696e1fd9a58fa46ddba12a7e002a390e286549e76b7b6dc9381caebf5a55f6af -address /run/containerd/containerd.sock
           │ │ ├─ 829 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id d7ce4002f230cff6e37267f76ed7369534eb6044392394a69dbb43f4002de16b -address /run/containerd/containerd.sock
           │ │ ├─ 954 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 6c1a643f9a1a8f669343590643aaae810c45990fc7f48eea1f5093ce806374b3 -address /run/containerd/containerd.sock
           │ │ └─1112 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id e028d45f38ed299de7e45e0fa678cd40dbdeecb63b8a9057fc244bda16e1e583 -address /run/containerd/containerd.sock
           │ ├─kubelet.service 
           │ │ └─108 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime=remote --container-runtime-endpoint=unix:///run/containerd/containerd.sock --fail-swap-on=false --node-ip=172.18.0.2 --node-labels= --pod-infra-container-image=k8s.gcr.io/pause:3.4.1 --provider-id=kind://docker/kind/kind-control-plane --fail-swap-on=false --cgroup-root=/kubelet
           │ └─systemd-journald.service 
           │   └─89 /lib/systemd/systemd-journald
           └─kubelet 
             └─kubepods 
               ├─podc3c1764b-d331-4401-bec0-19ad8cdc8656 
               │ ├─1d783b070199eb124e16875c76dda68b524ad86273e2d070224db3c56a960ff9 
               │ │ └─929 /bin/kindnetd
               │ └─696e1fd9a58fa46ddba12a7e002a390e286549e76b7b6dc9381caebf5a55f6af 
               │   └─810 /pause
               ├─burstable 
               │ ├─poda6bcb7e4-2a52-44b0-87bb-77221d153b3e 
               │ │ ├─e028d45f38ed299de7e45e0fa678cd40dbdeecb63b8a9057fc244bda16e1e583 
               │ │ │ └─1137 /pause
               │ │ └─47a2a9e4e5889e7fd7cf0c1abdc9e4c6ca2cb12a1464c98f1cd17c0b19397a35 
               │ │   └─1218 /coredns -conf /etc/coredns/Corefile
               │ ├─pod24ba8551bcc724a32d591bb02c423d92 
               │ │ ├─b3c1257993db12006b3f4232869fb4dfb24db32b534a00ec6e37b2041a9c5796 
               │ │ │ └─348 /pause
               │ │ └─aace7c4baa450cf7b56dacbaa5088b0c3fd616723eb74217bc04f99bab3398aa 
               │ │   └─460 etcd --advertise-client-urls=https://172.18.0.2:2379 --cert-file=/etc/kubernetes/pki/etcd/server.crt --client-cert-auth=true --data-dir=/var/lib/etcd --initial-advertise-peer-urls=https://172.18.0.2:2380 --initial-cluster=kind-control-plane=https://172.18.0.2:2380 --key-file=/etc/kubernetes/pki/etcd/server.key --listen-client-urls=https://127.0.0.1:2379,https://172.18.0.2:2379 --listen-metrics-urls=http://127.0.0.1:2381 --listen-peer-urls=https://172.18.0.2:2380 --name=kind-control-plane --peer-cert-file=/etc/kubernetes/pki/etcd/peer.crt --peer-client-cert-auth=true --peer-key-file=/etc/kubernetes/pki/etcd/peer.key --peer-trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt --snapshot-count=10000 --trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt
               │ ├─pod69dd939498054a211c3461b2a9cc8d26 
               │ │ ├─e9550313a52a4576ccd7c1ac0a76493d729869ff4c60652c5993c2e35f746678 
               │ │ │ └─336 /pause
               │ │ └─abf0a53a75b96b2e700f9d6bd9ae72047f103aeed41cd69f4b44e22a5a5993fd 
               │ │   └─434 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --authorization-kubeconfig=/etc/kubernetes/scheduler.conf --bind-address=127.0.0.1 --kubeconfig=/etc/kubernetes/scheduler.conf --leader-elect=true --port=0
               │ ├─pod46dac9a538838115821dfd9559149484 
               │ │ ├─972055640bc63f5c4d894145950cf92cdfb524dcf049fbe6aee47bf23facf297 
               │ │ │ └─433 kube-controller-manager --allocate-node-cidrs=true --authentication-kubeconfig=/etc/kubernetes/controller-manager.conf --authorization-kubeconfig=/etc/kubernetes/controller-manager.conf --bind-address=127.0.0.1 --client-ca-file=/etc/kubernetes/pki/ca.crt --cluster-cidr=10.244.0.0/16 --cluster-name=kind --cluster-signing-cert-file=/etc/kubernetes/pki/ca.crt --cluster-signing-key-file=/etc/kubernetes/pki/ca.key --controllers=*,bootstrapsigner,tokencleaner --enable-hostpath-provisioner=true --kubeconfig=/etc/kubernetes/controller-manager.conf --leader-elect=true --port=0 --requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt --root-ca-file=/etc/kubernetes/pki/ca.crt --service-account-private-key-file=/etc/kubernetes/pki/sa.key --service-cluster-ip-range=10.96.0.0/16 --use-service-account-credentials=true
               │ │ └─2dac3e5ed51b53f3da4c96b655a1d1380265ca4597ad63fd4d8d0faaf53f869d 
               │ │   └─334 /pause
               │ ├─podac26526c-e1df-49e9-88e0-12140f9befe0 
               │ │ ├─426f1c5b6812a197365867eae2a42e48be4982f82328b778794c4be84842d168 
               │ │ │ └─684 /pause
               │ │ └─664111be4a97747007a2a614811e9455321a609a69006586920908e75b0ec6be 
               │ │   └─719 /coredns -conf /etc/coredns/Corefile
               │ └─podbd1c21fe1f0ef615e0b5e41299f1be61 
               │   ├─6ad0c6b8b7a7d55d2bdbe9f3d9857a57065be4e569295b8adee3afe93757a052 
               │   │ └─546 /pause
               │   └─155b14e9e8a929f893f0b71895554ab40d1d2c5b4b3b8e1a004cb6cc1ce61c33 
               │     └─579 kube-apiserver --advertise-address=172.18.0.2 --allow-privileged=true --authorization-mode=Node,RBAC --client-ca-file=/etc/kubernetes/pki/ca.crt --enable-admission-plugins=NodeRestriction --enable-bootstrap-token-auth=true --etcd-cafile=/etc/kubernetes/pki/etcd/ca.crt --etcd-certfile=/etc/kubernetes/pki/apiserver-etcd-client.crt --etcd-keyfile=/etc/kubernetes/pki/apiserver-etcd-client.key --etcd-servers=https://127.0.0.1:2379 --insecure-port=0 --kubelet-client-certificate=/etc/kubernetes/pki/apiserver-kubelet-client.crt --kubelet-client-key=/etc/kubernetes/pki/apiserver-kubelet-client.key --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname --proxy-client-cert-file=/etc/kubernetes/pki/front-proxy-client.crt --proxy-client-key-file=/etc/kubernetes/pki/front-proxy-client.key --requestheader-allowed-names=front-proxy-client --requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt --requestheader-extra-headers-prefix=X-Remote-Extra- --requestheader-group-headers=X-Remote-Group --requestheader-username-headers=X-Remote-User --runtime-config= --secure-port=6443 --service-account-issuer=https://kubernetes.default.svc.cluster.local --service-account-key-file=/etc/kubernetes/pki/sa.pub --service-account-signing-key-file=/etc/kubernetes/pki/sa.key --service-cluster-ip-range=10.96.0.0/16 --tls-cert-file=/etc/kubernetes/pki/apiserver.crt --tls-private-key-file=/etc/kubernetes/pki/apiserver.key
               └─besteffort 
                 ├─podb33999ec-2cb1-4d0e-9733-b4bce21ca7b2 
                 │ ├─688d09db9cbb9ad79ee9c7456c499a93accfc7126760eaa1b98cfcff2c19224d 
                 │ │ └─1531 local-path-provisioner --debug start --helper-image k8s.gcr.io/build-image/debian-base:v2.1.0 --config /etc/config/config.json
                 │ └─d7ce4002f230cff6e37267f76ed7369534eb6044392394a69dbb43f4002de16b 
                 │   └─851 /pause
                 └─pod0ec90011-b5ae-4efc-8a54-d9fc34119605 
                   ├─6c1a643f9a1a8f669343590643aaae810c45990fc7f48eea1f5093ce806374b3 
                   │ └─978 /pause
                   └─f5cfbbf0ab83c29c42f4c1e84f12ca91ef77a2c39ee9b753b48cfbb743958947 
                     └─1011 /usr/local/bin/kube-proxy --config=/var/lib/kube-proxy/config.conf --hostname-override=kind-control-plane
root@kind-control-plane:/# ps -ax | grep scheduler
    434 ?        Ssl    0:52 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --authorization-kubeconfig=/etc/kubernetes/scheduler.conf --bind-address=127.0.0.1 --kubeconfig=/etc/kubernetes/scheduler.conf --leader-elect=true --port=0
  51849 pts/1    S+     0:00 grep --color=auto scheduler
root@kind-control-plane:/# ps -T 434
    PID    SPID TTY      STAT   TIME COMMAND
    434     434 ?        Rsl    0:08 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     500 ?        Rsl    0:12 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     501 ?        Ssl    0:00 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     502 ?        Ssl    0:00 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     503 ?        Ssl    0:03 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     513 ?        Ssl    0:06 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     514 ?        Ssl    0:08 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     607 ?        Ssl    0:00 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434     608 ?        Ssl    0:08 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
    434   16504 ?        Rsl    0:05 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --autho
root@kind-control-plane:/# pstree --thread -c | grep sched
bash: pstree: command not found
root@kind-control-plane:/# apt install pstree             
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package pstree
root@kind-control-plane:/# systemctl status | head
● kind-control-plane
    State: running
     Jobs: 0 queued
   Failed: 0 units
    Since: Sat 2022-07-16 10:36:33 EAT; 8h ago
   CGroup: /
           ├─init.scope 
           │ ├─    1 /sbin/init
           │ ├─51673 bash
           │ ├─52583 systemctl status
root@kind-control-plane:/# cat /proc/434/cgroup
0::/kubelet/kubepods/burstable/pod69dd939498054a211c3461b2a9cc8d26/abf0a53a75b96b2e700f9d6bd9ae72047f103aeed41cd69f4b44e22a5a5993fd
root@kind-control-plane:/# systemctl status       
● kind-control-plane
    State: running
     Jobs: 0 queued
   Failed: 0 units
    Since: Sat 2022-07-16 10:36:33 EAT; 8h ago
   CGroup: /
           ├─init.scope 
           │ ├─    1 /sbin/init
           │ ├─51673 bash
           │ ├─54198 systemctl status
           │ └─54199 (pager)
           ├─system.slice 
           │ ├─containerd.service …
           │ │ ├─ 102 /usr/local/bin/containerd
           │ │ ├─ 278 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 2dac3e5ed51b53f3da4c96b655a1d1380265ca4597ad63fd4d8d0faaf53f869d -address /run/containerd/containerd.sock
           │ │ ├─ 279 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id e9550313a52a4576ccd7c1ac0a76493d729869ff4c60652c5993c2e35f746678 -address /run/containerd/containerd.sock
           │ │ ├─ 280 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id b3c1257993db12006b3f4232869fb4dfb24db32b534a00ec6e37b2041a9c5796 -address /run/containerd/containerd.sock
           │ │ ├─ 526 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 6ad0c6b8b7a7d55d2bdbe9f3d9857a57065be4e569295b8adee3afe93757a052 -address /run/containerd/containerd.sock
           │ │ ├─ 664 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 426f1c5b6812a197365867eae2a42e48be4982f82328b778794c4be84842d168 -address /run/containerd/containerd.sock
           │ │ ├─ 770 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 696e1fd9a58fa46ddba12a7e002a390e286549e76b7b6dc9381caebf5a55f6af -address /run/containerd/containerd.sock
           │ │ ├─ 829 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id d7ce4002f230cff6e37267f76ed7369534eb6044392394a69dbb43f4002de16b -address /run/containerd/containerd.sock
           │ │ ├─ 954 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id 6c1a643f9a1a8f669343590643aaae810c45990fc7f48eea1f5093ce806374b3 -address /run/containerd/containerd.sock
           │ │ └─1112 /usr/local/bin/containerd-shim-runc-v2 -namespace k8s.io -id e028d45f38ed299de7e45e0fa678cd40dbdeecb63b8a9057fc244bda16e1e583 -address /run/containerd/containerd.sock
           │ ├─kubelet.service 
           │ │ └─108 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime=remote --container-runtime-endpoint=unix:///run/containerd/containerd.sock --fail-swap-on=false --node-ip=172.18.0.2 --node-labels= --pod-infra-container-image=k8s.gcr.io/pause:3.4.1 --provider-id=kind://docker/kind/kind-control-plane --fail-swap-on=false --cgroup-root=/kubelet
           │ └─systemd-journald.service 
           │   └─89 /lib/systemd/systemd-journald
           └─kubelet 
             └─kubepods 
               ├─podc3c1764b-d331-4401-bec0-19ad8cdc8656 
               │ ├─1d783b070199eb124e16875c76dda68b524ad86273e2d070224db3c56a960ff9 
               │ │ └─929 /bin/kindnetd
               │ └─696e1fd9a58fa46ddba12a7e002a390e286549e76b7b6dc9381caebf5a55f6af 
               │   └─810 /pause
               ├─burstable 
               │ ├─poda6bcb7e4-2a52-44b0-87bb-77221d153b3e 
               │ │ ├─e028d45f38ed299de7e45e0fa678cd40dbdeecb63b8a9057fc244bda16e1e583 
               │ │ │ └─1137 /pause
               │ │ └─47a2a9e4e5889e7fd7cf0c1abdc9e4c6ca2cb12a1464c98f1cd17c0b19397a35 
               │ │   └─1218 /coredns -conf /etc/coredns/Corefile
               │ ├─pod24ba8551bcc724a32d591bb02c423d92 
               │ │ ├─b3c1257993db12006b3f4232869fb4dfb24db32b534a00ec6e37b2041a9c5796 
               │ │ │ └─348 /pause
               │ │ └─aace7c4baa450cf7b56dacbaa5088b0c3fd616723eb74217bc04f99bab3398aa 
               │ │   └─460 etcd --advertise-client-urls=https://172.18.0.2:2379 --cert-file=/etc/kubernetes/pki/etcd/server.crt --client-cert-auth=true --data-dir=/var/lib/etcd --initial-advertise-peer-urls=https://172.18.0.2:2380 --initial-cluster=kind-control-plane=https://172.18.0.2:2380 --key-file=/etc/kubernetes/pki/etcd/server.key --listen-client-urls=https://127.0.0.1:2379,https://172.18.0.2:2379 --listen-metrics-urls=http://127.0.0.1:2381 --listen-peer-urls=https://172.18.0.2:2380 --name=kind-control-plane --peer-cert-file=/etc/kubernetes/pki/etcd/peer.crt --peer-client-cert-auth=true --peer-key-file=/etc/kubernetes/pki/etcd/peer.key --peer-trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt --snapshot-count=10000 --trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt
               │ ├─pod69dd939498054a211c3461b2a9cc8d26 
               │ │ ├─e9550313a52a4576ccd7c1ac0a76493d729869ff4c60652c5993c2e35f746678 
               │ │ │ └─336 /pause
               │ │ └─abf0a53a75b96b2e700f9d6bd9ae72047f103aeed41cd69f4b44e22a5a5993fd 
               │ │   └─434 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --authorization-kubeconfig=/etc/kubernetes/scheduler.conf --bind-address=127.0.0.1 --kubeconfig=/etc/kubernetes/scheduler.conf --leader-elect=true --port=0
               │ ├─pod46dac9a538838115821dfd9559149484 
               │ │ ├─972055640bc63f5c4d894145950cf92cdfb524dcf049fbe6aee47bf23facf297 
               │ │ │ └─433 kube-controller-manager --allocate-node-cidrs=true --authentication-kubeconfig=/etc/kubernetes/controller-manager.conf --authorization-kubeconfig=/etc/kubernetes/controller-manager.conf --bind-address=127.0.0.1 --client-ca-file=/etc/kubernetes/pki/ca.crt --cluster-cidr=10.244.0.0/16 --cluster-name=kind --cluster-signing-cert-file=/etc/kubernetes/pki/ca.crt --cluster-signing-key-file=/etc/kubernetes/pki/ca.key --controllers=*,bootstrapsigner,tokencleaner --enable-hostpath-provisioner=true --kubeconfig=/etc/kubernetes/controller-manager.conf --leader-elect=true --port=0 --requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt --root-ca-file=/etc/kubernetes/pki/ca.crt --service-account-private-key-file=/etc/kubernetes/pki/sa.key --service-cluster-ip-range=10.96.0.0/16 --use-service-account-credentials=true
               │ │ └─2dac3e5ed51b53f3da4c96b655a1d1380265ca4597ad63fd4d8d0faaf53f869d 
               │ │   └─334 /pause
               │ ├─podac26526c-e1df-49e9-88e0-12140f9befe0 
               │ │ ├─426f1c5b6812a197365867eae2a42e48be4982f82328b778794c4be84842d168 
               │ │ │ └─684 /pause
               │ │ └─664111be4a97747007a2a614811e9455321a609a69006586920908e75b0ec6be 
               │ │   └─719 /coredns -conf /etc/coredns/Corefile
               │ └─podbd1c21fe1f0ef615e0b5e41299f1be61 
               │   ├─6ad0c6b8b7a7d55d2bdbe9f3d9857a57065be4e569295b8adee3afe93757a052 
               │   │ └─546 /pause
               │   └─155b14e9e8a929f893f0b71895554ab40d1d2c5b4b3b8e1a004cb6cc1ce61c33 
               │     └─579 kube-apiserver --advertise-address=172.18.0.2 --allow-privileged=true --authorization-mode=Node,RBAC --client-ca-file=/etc/kubernetes/pki/ca.crt --enable-admission-plugins=NodeRestriction --enable-bootstrap-token-auth=true --etcd-cafile=/etc/kubernetes/pki/etcd/ca.crt --etcd-certfile=/etc/kubernetes/pki/apiserver-etcd-client.crt --etcd-keyfile=/etc/kubernetes/pki/apiserver-etcd-client.key --etcd-servers=https://127.0.0.1:2379 --insecure-port=0 --kubelet-client-certificate=/etc/kubernetes/pki/apiserver-kubelet-client.crt --kubelet-client-key=/etc/kubernetes/pki/apiserver-kubelet-client.key --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname --proxy-client-cert-file=/etc/kubernetes/pki/front-proxy-client.crt --proxy-client-key-file=/etc/kubernetes/pki/front-proxy-client.key --requestheader-allowed-names=front-proxy-client --requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt --requestheader-extra-headers-prefix=X-Remote-Extra- --requestheader-group-headers=X-Remote-Group --requestheader-username-headers=X-Remote-User --runtime-config= --secure-port=6443 --service-account-issuer=https://kubernetes.default.svc.cluster.local --service-account-key-file=/etc/kubernetes/pki/sa.pub --service-account-signing-key-file=/etc/kubernetes/pki/sa.key --service-cluster-ip-range=10.96.0.0/16 --tls-cert-file=/etc/kubernetes/pki/apiserver.crt --tls-private-key-file=/etc/kubernetes/pki/apiserver.key
               └─besteffort 
                 ├─podb33999ec-2cb1-4d0e-9733-b4bce21ca7b2 
                 │ ├─688d09db9cbb9ad79ee9c7456c499a93accfc7126760eaa1b98cfcff2c19224d 
                 │ │ └─1531 local-path-provisioner --debug start --helper-image k8s.gcr.io/build-image/debian-base:v2.1.0 --config /etc/config/config.json
                 │ └─d7ce4002f230cff6e37267f76ed7369534eb6044392394a69dbb43f4002de16b 
                 │   └─851 /pause
                 └─pod0ec90011-b5ae-4efc-8a54-d9fc34119605 
                   ├─6c1a643f9a1a8f669343590643aaae810c45990fc7f48eea1f5093ce806374b3 
                   │ └─978 /pause
                   └─f5cfbbf0ab83c29c42f4c1e84f12ca91ef77a2c39ee9b753b48cfbb743958947 
                     └─1011 /usr/local/bin/kube-proxy --config=/var/lib/kube-proxy/config.conf --hostname-override=kind-control-plane
root@kind-control-plane:/# cat /proc/433/cgr
cat: /proc/433/cgr: No such file or directory
root@kind-control-plane:/# cat /proc/433/cgroup
0::/kubelet/kubepods/burstable/pod46dac9a538838115821dfd9559149484/972055640bc63f5c4d894145950cf92cdfb524dcf049fbe6aee47bf23facf297
root@kind-control-plane:/# cat /proc/*/cgroup
0::/init.scope
0::/kubelet/kubepods/besteffort/pod0ec90011-b5ae-4efc-8a54-d9fc34119605/f5cfbbf0ab83c29c42f4c1e84f12ca91ef77a2c39ee9b753b48cfbb743958947
0::/system.slice/containerd.service
0::/system.slice/kubelet.service
0::/system.slice/containerd.service
0::/kubelet/kubepods/burstable/poda6bcb7e4-2a52-44b0-87bb-77221d153b3e/e028d45f38ed299de7e45e0fa678cd40dbdeecb63b8a9057fc244bda16e1e583
0::/kubelet/kubepods/burstable/poda6bcb7e4-2a52-44b0-87bb-77221d153b3e/47a2a9e4e5889e7fd7cf0c1abdc9e4c6ca2cb12a1464c98f1cd17c0b19397a35
0::/kubelet/kubepods/besteffort/podb33999ec-2cb1-4d0e-9733-b4bce21ca7b2/688d09db9cbb9ad79ee9c7456c499a93accfc7126760eaa1b98cfcff2c19224d
0::/system.slice/containerd.service
0::/system.slice/containerd.service
0::/system.slice/containerd.service
0::/kubelet/kubepods/burstable/pod46dac9a538838115821dfd9559149484/2dac3e5ed51b53f3da4c96b655a1d1380265ca4597ad63fd4d8d0faaf53f869d
0::/kubelet/kubepods/burstable/pod69dd939498054a211c3461b2a9cc8d26/e9550313a52a4576ccd7c1ac0a76493d729869ff4c60652c5993c2e35f746678
0::/kubelet/kubepods/burstable/pod24ba8551bcc724a32d591bb02c423d92/b3c1257993db12006b3f4232869fb4dfb24db32b534a00ec6e37b2041a9c5796
0::/kubelet/kubepods/burstable/pod46dac9a538838115821dfd9559149484/972055640bc63f5c4d894145950cf92cdfb524dcf049fbe6aee47bf23facf297
0::/kubelet/kubepods/burstable/pod69dd939498054a211c3461b2a9cc8d26/abf0a53a75b96b2e700f9d6bd9ae72047f103aeed41cd69f4b44e22a5a5993fd
0::/kubelet/kubepods/burstable/pod24ba8551bcc724a32d591bb02c423d92/aace7c4baa450cf7b56dacbaa5088b0c3fd616723eb74217bc04f99bab3398aa
0::/init.scope
0::/system.slice/containerd.service
0::/kubelet/kubepods/burstable/podbd1c21fe1f0ef615e0b5e41299f1be61/6ad0c6b8b7a7d55d2bdbe9f3d9857a57065be4e569295b8adee3afe93757a052
0::/kubelet/kubepods/burstable/podbd1c21fe1f0ef615e0b5e41299f1be61/155b14e9e8a929f893f0b71895554ab40d1d2c5b4b3b8e1a004cb6cc1ce61c33
0::/system.slice/containerd.service
0::/kubelet/kubepods/burstable/podac26526c-e1df-49e9-88e0-12140f9befe0/426f1c5b6812a197365867eae2a42e48be4982f82328b778794c4be84842d168
0::/kubelet/kubepods/burstable/podac26526c-e1df-49e9-88e0-12140f9befe0/664111be4a97747007a2a614811e9455321a609a69006586920908e75b0ec6be
0::/system.slice/containerd.service
0::/kubelet/kubepods/podc3c1764b-d331-4401-bec0-19ad8cdc8656/696e1fd9a58fa46ddba12a7e002a390e286549e76b7b6dc9381caebf5a55f6af
0::/system.slice/containerd.service
0::/kubelet/kubepods/besteffort/podb33999ec-2cb1-4d0e-9733-b4bce21ca7b2/d7ce4002f230cff6e37267f76ed7369534eb6044392394a69dbb43f4002de16b
0::/system.slice/systemd-journald.service
0::/kubelet/kubepods/podc3c1764b-d331-4401-bec0-19ad8cdc8656/1d783b070199eb124e16875c76dda68b524ad86273e2d070224db3c56a960ff9
0::/system.slice/containerd.service
0::/kubelet/kubepods/besteffort/pod0ec90011-b5ae-4efc-8a54-d9fc34119605/6c1a643f9a1a8f669343590643aaae810c45990fc7f48eea1f5093ce806374b3
0::/init.scope
0::/init.scope
root@kind-control-plane:/# exit

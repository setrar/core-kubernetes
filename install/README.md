# Install

## :toolbox: Install Tools

* Install `Docker Desktop`

```
MACH=$(uname -m) ; [[ $MACH = "x86_64" ]] && ARCH="amd64" || ARCH="arm64"
```

```
ARCH=amd64 # ARCH=arm64
```

```
wget https://desktop.docker.com/mac/main/${ARCH}/Docker.dmg ; hdiutil attach Docker.dmg
```

```
cp -R /Volumes/Docker/Docker.app /Applications
```

```
hdiutil detach /Volumes/Docker ; rm Docker.dmg
```

* Install `kubectl`
```
brew install kubectl
```

* Install `kind`

```
brew install kind
```

## Install Cluster

```
kind delete cluster --name=kind
```

```
kind create cluster
```
> Returns

<img src="../images/kind-kind.png" width=900 > </img>

```
kubectl get nodes
```
> Returns
```
NAME                 STATUS   ROLES                  AGE   VERSION
kind-control-plane   Ready    control-plane,master   11m   v1.21.1
```

```
docker container ls
```
> Returns
```
CONTAINER ID   IMAGE                  COMMAND                  CREATED          STATUS          PORTS                       NAMES
293eb65422ff   kindest/node:v1.21.1   "/usr/local/bin/entr…"   11 minutes ago   Up 11 minutes   127.0.0.1:49424->6443/tcp   kind-control-plane
```

- [ ] Accessing the kind contol plane

```
docker container exec --interactive --tty kind-control-plane /bin/bash
```

## :bulb: Prometeus

```
brew install prometheus
```

## :bulb: Grafana

```
brew install grafana
```
> Outputs
```
Warning: No remote 'origin' in /opt/homebrew/Library/Taps/u0000000021/homebrew-local-tap, skipping update!
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
Updated 1 tap (homebrew/core).
==> New Formulae
prql-compiler

You have 44 outdated formulae and 12 outdated casks installed.
You can upgrade them with brew upgrade
or list them with brew outdated.

==> Downloading https://ghcr.io/v2/homebrew/core/grafana/manifests/9.0.2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/grafana/blobs/sha256:fb5292a91d3eea90e4f82d2b9875442399d0d99b1eff51a1e18ca47ad687ef5b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:fb5292a91d3eea90e4f82d2b9875442399d0d99b1eff51a1e18ca47
######################################################################## 100.0%
==> Pouring grafana--9.0.2.arm64_monterey.bottle.tar.gz
==> Caveats
To restart grafana after an upgrade:
  brew services restart grafana
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/grafana/bin/grafana-server --config /opt/homebrew/etc/grafana/grafana.ini --homepath /opt/homebrew/opt/grafana/share/grafana --packaging=brew cfg:default.paths.logs=/opt/homebrew/var/log/grafana cfg:default.paths.data=/opt/homebrew/var/lib/grafana cfg:default.paths.plugins=/opt/homebrew/var/lib/grafana/plugins
==> Summary
🍺  /opt/homebrew/Cellar/grafana/9.0.2: 6,007 files, 243.6MB
==> Running `brew cleanup grafana`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

```
brew services restart grafana
```

```
open http://localhost:3000
```

User: admin 

# References

- [ ] [zsh comment character](https://apple.stackexchange.com/questions/405246/zsh-comment-character)

```
echo "setopt interactivecomments" >> ${HOME}/.zshrc
```

- [ ] [Ternary operator (?:) in Bash](https://stackoverflow.com/questions/3953645/ternary-operator-in-bash)

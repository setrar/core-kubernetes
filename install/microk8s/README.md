# microk8s on Apple M1

## :gear: Install 

:round_pushpin: Unpack

```
brew install ubuntu/microk8s/microk8s
```
> Outputs
```
Warning: No remote 'origin' in /opt/homebrew/Library/Taps/u0000000021/homebrew-local-tap, skipping update!
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
==> Updated Homebrew from 38e1af857 to 3.5.4 (540025494).
Updated 3 taps (knative/client, homebrew/core and homebrew/cask).
==> New Formulae
bfgminer                gnustep-base            libobjc2                mypaint-brushes         sgn
cargo-bundle            ijq                     licensor                neovide                 snowflake
circumflex              interface99             livekit                 nftables                tea
czg                     iptables                livekit-cli             pax                     tremor-runtime
dart-sdk                knative/client/kn@1.5   lunar-date              pipe-rename             trzsz-go
datatype99              kt-connect              mabel                   pixie                   unisonlang
docker-buildx           leapp-cli               manifest-tool           pixiewps                uthash
doggo                   levant                  meek                    podman-compose          verapdf
dooit                   lgeneral                metalang99              protobuf@3              webkitgtk
dumpling                libnetfilter_conntrack  mkp224o                 python-build            xdg-ninja
dunamai                 libnftnl                mle                     qsv
editorconfig-checker    libnl                   mprocs                  railway
==> New Casks
archy                                   gyroflow                                tdr-nova
bing-wallpaper                          headlamp                                tdr-vos-slickeq
black-light                             juice                                   ukrainian-typographic-keyboard
black-light-pro                         lemonlime                               weektodo
cardinal                                mbcord                                  wirecast
cloud189                                rockboxutility                          yousician
cro-mag-rally                           squash
gamma-control                           tdr-kotelnikov

You have 70 outdated formulae and 12 outdated casks installed.
You can upgrade them with brew upgrade
or list them with brew outdated.


The 3.5.0 release notes are available on the Homebrew Blog:
  https://brew.sh/blog/3.5.0
The 3.5.4 changelog can be found at:
  https://github.com/Homebrew/brew/releases/tag/3.5.4
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/1.1/manifests/1.1.1q
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/1.1/blobs/sha256:4e7b6cb2252c554a8e25ecae960f2fcd9a7fa742aa3f
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:4e7b6cb2252c554a8e25ecae960f2fcd9
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/sqlite/manifests/3.39.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/sqlite/blobs/sha256:a784162db8884acde9081649ae2777abe75b2e7c8072f6a1f
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:a784162db8884acde9081649ae2777abe
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.9/manifests/3.9.13_1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.9/blobs/sha256:2e02d1c12a0baecc8b1af05701c7db8038e6b9a7bf453
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:2e02d1c12a0baecc8b1af05701c7db803
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/kubernetes-cli/manifests/1.24.3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/kubernetes-cli/blobs/sha256:83d1081fcb669a45a7620db7f7a2c905d5d584226
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:83d1081fcb669a45a7620db7f7a2c905d
######################################################################## 100.0%
==> Downloading https://files.pythonhosted.org/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/5b39e89e658280724d3e7e62657dd61dfa5d3df9becc746281731ff56371d5bd--certifi-2020.12.5.tar.gz
==> Downloading https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/de28644dd0ba2aaf30228e9b28ba90366e333e7a34e1b1f97cf85d0edd0cb278--chardet-3.0.4.tar.gz
==> Downloading https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/729f15182b3d73a61df6c5b70fb07736c3a57abd09b7fde46af074f5787e42dd--click-7.1.2.tar.gz
==> Downloading https://files.pythonhosted.org/packages/65/c4/80f97e9c9628f3cac9b98bfca0402ede54e0563b56482e3e6e45c43c
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/aba6aff23ff0ee31279add4664bd5f407a590ad2a0ac29747f5e569a51e8cedf--idna-2.7.tar.gz
==> Downloading https://files.pythonhosted.org/packages/71/fc/7c8e01f41a6e671d7b11be470eeb3d15339c75ce5559935f3f55890e
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/4f671409b54c153caf3929a5a9210e036096c54fdbd567619affcd6156fbc00d--progressbar33-2.4.tar.gz
==> Downloading https://files.pythonhosted.org/packages/97/10/92d25b93e9c266c94b76a5548f020f3f1dd0eb40649cb1993532c0af
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/b41510c418b03cfb53cff6ccb749c551377cb242100e0f7a6ed9a1419e5605c5--requests-2.20.0.tar.gz
==> Downloading https://files.pythonhosted.org/packages/f3/94/67d781fb32afbee0fffa0ad9e16ad0491f1a9c303e14790ae4e18f11
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/079163d4a38fd48851f914d3018dc464b95e7ef341f9cc40998303f4bf7f0bfa--requests-unixsocket-0.1.5.tar.gz
==> Downloading https://files.pythonhosted.org/packages/f0/07/26b519e6ebb03c2a74989f7571e6ae6b82e9d7d81b8de6fcdbfc643c
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/c394b64dcdc4fbf8ad5b5bd86402b48123ae4275fdc917d0b0c3a2934bc0cc7f--simplejson-3.8.2.tar.gz
==> Downloading https://files.pythonhosted.org/packages/b9/19/5cbd78eac8b1783671c40e34bb0fa83133a06d340a38b55c645076d4
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/8dd2734c2fe98588801dd538809a3da7987291bd858dfbad935cfabd46090cbb--toml-0.10.0.tar.gz
==> Downloading https://files.pythonhosted.org/packages/fd/fa/b21f4f03176463a6cccdb612a5ff71b927e5224e83483012747c12fc
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/17afd9f91be6a5b62202c12b7e2fdba3860182bd630f4912fd306850ff49619c--urllib3-1.24.2.tar.gz
==> Downloading https://github.com/ubuntu/microk8s/archive/installer-v2.2.0.tar.gz
Already downloaded: /Users/u0000000021/Library/Caches/Homebrew/downloads/66f509798fd2ca9e498af59e9e12d3a44cdee67697ead2c721babd3eb19f1eaf--microk8s-installer-v2.2.0.tar.gz
==> Installing microk8s from ubuntu/microk8s
==> Installing dependencies for ubuntu/microk8s/microk8s: openssl@1.1, sqlite, python and kubernetes-cli
==> Installing ubuntu/microk8s/microk8s dependency: openssl@1.1
==> Pouring openssl@1.1--1.1.1q.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/openssl@1.1/1.1.1q: 8,097 files, 18MB
==> Installing ubuntu/microk8s/microk8s dependency: sqlite
==> Pouring sqlite--3.39.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/sqlite/3.39.1: 11 files, 4.4MB
==> Installing ubuntu/microk8s/microk8s dependency: python
==> Pouring python@3.9--3.9.13_1.arm64_monterey.bottle.tar.gz
==> /opt/homebrew/Cellar/python@3.9/3.9.13_1/bin/python3 -m ensurepip
==> /opt/homebrew/Cellar/python@3.9/3.9.13_1/bin/python3 -m pip install -v --no-deps --no-index --upgrade --isolated -
🍺  /opt/homebrew/Cellar/python@3.9/3.9.13_1: 3,088 files, 57.6MB
==> Installing ubuntu/microk8s/microk8s dependency: kubernetes-cli
==> Pouring kubernetes-cli--1.24.3.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/kubernetes-cli/1.24.3: 228 files, 55.3MB
==> Installing ubuntu/microk8s/microk8s
==> python3 -m venv --system-site-packages /opt/homebrew/Cellar/microk8s/2.2.0/libexec
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> /opt/homebrew/Cellar/microk8s/2.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /pri
==> Caveats
Run `microk8s install` to start with MicroK8s
==> Summary
🍺  /opt/homebrew/Cellar/microk8s/2.2.0: 1,995 files, 21.2MB, built in 24 seconds
==> Running `brew cleanup microk8s`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--toml--0.10.0.tar.gz... (16.3KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--simplejson--3.8.2.tar.gz... (74.8KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--2.2.0.tar.gz... (450.9KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--progressbar33--2.4.tar.gz... (9.9KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--urllib3--1.24.2.tar.gz... (225.3KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--chardet--3.0.4.tar.gz... (1.8MB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--idna--2.7.tar.gz... (168.7KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--certifi--2020.12.5.tar.gz... (146.0KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--requests--2.20.0.tar.gz... (108.6KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--requests-unixsocket--0.1.5.tar.gz... (10.3KB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/microk8s--click--7.1.2.tar.gz... (290.3KB)
==> Upgrading 17 dependents of upgraded formulae:
Disable this behaviour by setting HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
ansible 5.7.1 -> 6.1.0, awscli 2.6.3 -> 2.7.16, azure-cli 2.36.0 -> 2.38.0, glib 2.72.1 -> 2.72.2, harfbuzz 4.2.1 -> 4.3.0, kops 1.23.0 -> 1.23.2, librsvg 2.54.1 -> 2.54.4, llvm 13.0.1_1 -> 14.0.6_1, pango 1.50.6 -> 1.50.8, plantuml 1.2022.5 -> 1.2022.6, podman 4.1.0 -> 4.1.1, poppler 22.04.0 -> 22.06.0, python@3.10 3.10.4 -> 3.10.5, python@3.8 3.8.13 -> 3.8.13_1, qemu 6.2.0_1 -> 7.0.0_1, qt 6.2.3_1 -> 6.3.1_1, r 4.2.0 -> 4.2.1
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.10/manifests/3.10.5
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.10/blobs/sha256:cf86ae4b20eb1385e3623b30e793b4f562d973913138
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:cf86ae4b20eb1385e3623b30e793b4f56
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/llvm/manifests/14.0.6_1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/llvm/blobs/sha256:bb22d243ad001cd69c26ebe670684701ef03d9d3895773d30b9
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:bb22d243ad001cd69c26ebe670684701e
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.8/manifests/3.8.13_1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.8/blobs/sha256:3045dc34ad02cc055e9a93de411978c70280555c0db77
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:3045dc34ad02cc055e9a93de411978c70
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/glib/manifests/2.72.2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/glib/blobs/sha256:dd94ffde0318591e91b826353d83387839c57b4455bd79243c7
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:dd94ffde0318591e91b826353d8338783
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/manifests/2.12.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/blobs/sha256:3e190f2fa02702aa86e46cf33e7dde1d93e879f1de38f3d
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:3e190f2fa02702aa86e46cf33e7dde1d9
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libxcb/manifests/1.15
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libxcb/blobs/sha256:b9ed936a5ee43ec58cfa7db03a75ff2b336836c219c024c58
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:b9ed936a5ee43ec58cfa7db03a75ff2b3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libx11/manifests/1.8.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libx11/blobs/sha256:dc03a6058d4ac7ae5c58f30e3cc78a056d26417388190f759
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:dc03a6058d4ac7ae5c58f30e3cc78a056
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/harfbuzz/manifests/4.3.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/harfbuzz/blobs/sha256:f60423051df871df3587324817b8d0f3ee4e80d3ff8fd73
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f60423051df871df3587324817b8d0f3e
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/kops/manifests/1.23.2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/kops/blobs/sha256:bd50adb4a14ce4bc457cac9fb82bcf15bc41257f4e81a308ea0
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:bd50adb4a14ce4bc457cac9fb82bcf15b
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/pango/manifests/1.50.8
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/pango/blobs/sha256:0987ece4f69d550c87ae90bb3f654dc98aed7de627c94b50fa
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0987ece4f69d550c87ae90bb3f654dc98
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libtiff/manifests/4.4.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libtiff/blobs/sha256:d2dfbad3fe68e070d0937c71b4de6ca110dda32599a2adfc
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d2dfbad3fe68e070d0937c71b4de6ca11
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/librsvg/manifests/2.54.4
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/librsvg/blobs/sha256:0fe56875496becf415693b134ba94abb810fa68efa84b257
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0fe56875496becf415693b134ba94abb8
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/aom/manifests/3.4.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/aom/blobs/sha256:f16849b3bb161a0695d5bb6677799f4d87e1db60fbaf6719f1ea
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:f16849b3bb161a0695d5bb6677799f4d8
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/jasper/manifests/3.0.6
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/jasper/blobs/sha256:c7bef3615895f3bc6fb09be8ddae9f4ef8adcabe0757e5e95
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:c7bef3615895f3bc6fb09be8ddae9f4ef
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/netpbm/manifests/10.86.33
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/netpbm/blobs/sha256:4d6847069d5fe7cfa083af5504968be345c51b89654554c0c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:4d6847069d5fe7cfa083af5504968be34
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openjdk/manifests/18.0.1.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openjdk/blobs/sha256:9fed2650a83504643d6b54ebc8213f04afc3f662d63f2f69
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:9fed2650a83504643d6b54ebc8213f04a
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/plantuml/manifests/1.2022.6
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/plantuml/blobs/sha256:61b4806016780a62a2ddc5ed8b37aecd24d0c1598b5bce8
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:61b4806016780a62a2ddc5ed8b37aecd2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/manifests/2.3.3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/blobs/sha256:e2d5ad350bd11194d179b2bf199103ce3a0f4aa57cca95fc
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:e2d5ad350bd11194d179b2bf199103ce3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/nettle/manifests/3.8
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/nettle/blobs/sha256:1b61086fc1616d167da639ff13fa27f69725d4f13c355dbf2
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:1b61086fc1616d167da639ff13fa27f69
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/manifests/1.48.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/blobs/sha256:4378f718973183dfc187684d4f7839f57c59f8a0029f1
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:4378f718973183dfc187684d4f7839f57
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/unbound/manifests/1.16.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/unbound/blobs/sha256:3622c6fcc10b30da1c8551d5b78179586de78801357bef21
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:3622c6fcc10b30da1c8551d5b78179586
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gnutls/manifests/3.7.6
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gnutls/blobs/sha256:23bf1632f4690a1674f87802590e397b64b72c6b0dfea1cbe
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:23bf1632f4690a1674f87802590e397b6
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/qemu/manifests/7.0.0_1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/qemu/blobs/sha256:d0640f2fa4be667c881a9364a5eabe40626b5cc887a6ade53d0
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d0640f2fa4be667c881a9364a5eabe406
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/podman/manifests/4.1.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/podman/blobs/sha256:0389d5ec1489959bc7ff0a558ebf9816317942d5de988cf17
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0389d5ec1489959bc7ff0a558ebf98163
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/assimp/manifests/5.2.4
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/assimp/blobs/sha256:67d6e7b43419f11e105b6ac7e4a147ce07aef50b933c41fbf
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:67d6e7b43419f11e105b6ac7e4a147ce0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-turbo/manifests/2.1.3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-turbo/blobs/sha256:0fe5fd23465784fe56f97c29589a72eacc21f8fb75f8c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0fe5fd23465784fe56f97c29589a72eac
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/qt/manifests/6.3.1_1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/qt/blobs/sha256:abe333d16ba99fd91be9c5b6d836ec1f3a2a3c91a0b4b2874e106
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:abe333d16ba99fd91be9c5b6d836ec1f3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/nspr/manifests/4.34
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/nspr/blobs/sha256:0fb44c31fa21aee523a8bfb2a5736a7fe29f998591b418b0e3c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0fb44c31fa21aee523a8bfb2a5736a7fe
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/nss/manifests/3.80
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/nss/blobs/sha256:7e8595d7cf9712d24ef97a803722799fd5d06222e2c6db27a917
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:7e8595d7cf9712d24ef97a803722799fd
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openjpeg/manifests/2.5.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openjpeg/blobs/sha256:ca6ecfefa5412308685c26b756bb2ba3017e08fec8f598c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:ca6ecfefa5412308685c26b756bb2ba30
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/poppler/manifests/22.06.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/poppler/blobs/sha256:736380c33aeff2bd6c99fa046e1a8a3523ae8ee93753498b
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:736380c33aeff2bd6c99fa046e1a8a352
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/ansible/manifests/6.1.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/ansible/blobs/sha256:b142f98349b8ba213d75c9e558f2293c28a8dd852ff88985
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:b142f98349b8ba213d75c9e558f2293c2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/isl/manifests/0.25
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/isl/blobs/sha256:764bde8aa0d015c13cbf53891489f3ef56a5951f617ad9906aea
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:764bde8aa0d015c13cbf53891489f3ef5
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gcc/manifests/11.3.0_2-1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gcc/blobs/sha256:330f9db4ca60cf49809b8bb6ed0307b991330ff0184d8989e1e9
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:330f9db4ca60cf49809b8bb6ed0307b99
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/r/manifests/4.2.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/r/blobs/sha256:d8f17e97451602c20562b963b0bfca9dc7f2f6d3f16163b17ba753
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:d8f17e97451602c20562b963b0bfca9dc
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/awscli/manifests/2.7.16
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/awscli/blobs/sha256:11b60aec43be3d78abd03420a6b07a579796fa6f4755e9b31
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:11b60aec43be3d78abd03420a6b07a579
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/azure-cli/manifests/2.38.0
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/azure-cli/blobs/sha256:05185c2ea6c7729df85de2a66bda8593a9aea473ce0c2c
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:05185c2ea6c7729df85de2a66bda8593a
######################################################################## 100.0%
==> Upgrading python@3.10
  3.10.4 -> 3.10.5 

==> Pouring python@3.10--3.10.5.arm64_monterey.bottle.tar.gz
==> /opt/homebrew/Cellar/python@3.10/3.10.5/bin/python3 -m ensurepip
==> /opt/homebrew/Cellar/python@3.10/3.10.5/bin/python3 -m pip install -v --no-deps --no-index --upgrade --isolated --
🍺  /opt/homebrew/Cellar/python@3.10/3.10.5: 3,139 files, 57.5MB
==> Running `brew cleanup python@3.10`...
Removing: /opt/homebrew/Cellar/python@3.10/3.10.4... (3,140 files, 57.3MB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/python@3.10--3.10.4... (14.6MB)
==> Upgrading llvm
  13.0.1_1 -> 14.0.6_1 

==> Pouring llvm--14.0.6_1.arm64_monterey.bottle.tar.gz
==> Caveats
To use the bundled libc++ please add the following LDFLAGS:
  LDFLAGS="-L/opt/homebrew/opt/llvm/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib"

llvm is keg-only, which means it was not symlinked into /opt/homebrew,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have llvm first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/llvm/bin:$PATH"' >> ~/.zshrc

For compilers to find llvm you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

==> Summary
🍺  /opt/homebrew/Cellar/llvm/14.0.6_1: 5,851 files, 983.5MB
==> Running `brew cleanup llvm`...
Removing: /opt/homebrew/Cellar/llvm/13.0.1_1... (5,449 files, 909.2MB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/llvm--13.0.1_1... (240.3MB)
==> Upgrading python@3.8
  3.8.13 -> 3.8.13_1 

==> Pouring python@3.8--3.8.13_1.arm64_monterey.bottle.tar.gz
==> /opt/homebrew/Cellar/python@3.8/3.8.13_1/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install
==> /opt/homebrew/Cellar/python@3.8/3.8.13_1/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install
==> /opt/homebrew/Cellar/python@3.8/3.8.13_1/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install
==> Caveats
Python has been installed as
  /opt/homebrew/opt/python@3.8/bin/python3

Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
  /opt/homebrew/opt/python@3.8/libexec/bin

You can install Python packages with
  /opt/homebrew/opt/python@3.8/bin/pip3 install <package>
They will install into the site-package directory
  /opt/homebrew/lib/python3.8/site-packages

See: https://docs.brew.sh/Homebrew-and-Python

python@3.8 is keg-only, which means it was not symlinked into /opt/homebrew,
because this is an alternate version of another formula.

If you need to have python@3.8 first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"' >> ~/.zshrc

For compilers to find python@3.8 you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/python@3.8/lib"

For pkg-config to find python@3.8 you may need to set:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/python@3.8/lib/pkgconfig"

==> Summary
🍺  /opt/homebrew/Cellar/python@3.8/3.8.13_1: 4,916 files, 79.9MB
==> Running `brew cleanup python@3.8`...
Removing: /opt/homebrew/Cellar/python@3.8/3.8.13... (12,741 files, 220.9MB)
Warning: Directory not empty @ dir_s_rmdir - /opt/homebrew/Cellar/python@3.8/3.8.13
==> Upgrading glib
  2.72.1 -> 2.72.2 

==> Pouring glib--2.72.2.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/glib/2.72.2: 449 files, 21.5MB
==> Running `brew cleanup glib`...
Removing: /opt/homebrew/Cellar/glib/2.72.1... (449 files, 21.5MB)
==> Upgrading harfbuzz
  4.2.1 -> 4.3.0 

==> Installing dependencies for harfbuzz: freetype, libxcb and libx11
==> Installing harfbuzz dependency: freetype
==> Pouring freetype--2.12.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/freetype/2.12.1: 67 files, 2.3MB
==> Installing harfbuzz dependency: libxcb
==> Pouring libxcb--1.15.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libxcb/1.15: 2,459 files, 7.3MB
==> Installing harfbuzz dependency: libx11
==> Pouring libx11--1.8.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libx11/1.8.1: 1,055 files, 7MB
==> Installing harfbuzz
==> Pouring harfbuzz--4.3.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/harfbuzz/4.3.0: 68 files, 7.5MB
==> Running `brew cleanup harfbuzz`...
Removing: /opt/homebrew/Cellar/harfbuzz/4.2.1... (68 files, 7.6MB)
==> Upgrading kops
  1.23.0 -> 1.23.2 

==> Pouring kops--1.23.2.arm64_monterey.bottle.tar.gz
==> Caveats
zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
==> Summary
🍺  /opt/homebrew/Cellar/kops/1.23.2: 6 files, 166.0MB
==> Running `brew cleanup kops`...
Removing: /opt/homebrew/Cellar/kops/1.23.0... (6 files, 171MB)
==> Upgrading pango
  1.50.6 -> 1.50.8 

==> Pouring pango--1.50.8.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/pango/1.50.8: 68 files, 3.3MB
==> Running `brew cleanup pango`...
Removing: /opt/homebrew/Cellar/pango/1.50.6... (68 files, 3.3MB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/pango--1.50.6... (796.6KB)
==> Upgrading librsvg
  2.54.1 -> 2.54.4 

==> Installing dependencies for librsvg: libtiff
==> Installing librsvg dependency: libtiff
==> Pouring libtiff--4.4.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libtiff/4.4.0: 249 files, 4.8MB
==> Installing librsvg
==> Pouring librsvg--2.54.4.arm64_monterey.bottle.tar.gz
==> /opt/homebrew/opt/gdk-pixbuf/bin/gdk-pixbuf-query-loaders --update-cache
🍺  /opt/homebrew/Cellar/librsvg/2.54.4: 24 files, 54.4MB
==> Running `brew cleanup librsvg`...
Removing: /opt/homebrew/Cellar/librsvg/2.54.1... (24 files, 54.4MB)
==> Upgrading plantuml
  1.2022.5 -> 1.2022.6 

==> Installing dependencies for plantuml: aom, jasper, netpbm and openjdk
==> Installing plantuml dependency: aom
==> Pouring aom--3.4.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/aom/3.4.0: 23 files, 8.4MB
==> Installing plantuml dependency: jasper
==> Pouring jasper--3.0.6.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/jasper/3.0.6: 44 files, 1.6MB
==> Installing plantuml dependency: netpbm
==> Pouring netpbm--10.86.33.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/netpbm/10.86.33: 410 files, 18.8MB
==> Installing plantuml dependency: openjdk
==> Pouring openjdk--18.0.1.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/openjdk/18.0.1.1: 642 files, 309MB
==> Installing plantuml
==> Pouring plantuml--1.2022.6.all.bottle.tar.gz
🍺  /opt/homebrew/Cellar/plantuml/1.2022.6: 4 files, 9.2MB
==> Running `brew cleanup plantuml`...
Removing: /opt/homebrew/Cellar/plantuml/1.2022.5... (4 files, 9.3MB)
==> Upgrading qemu
  6.2.0_1 -> 7.0.0_1 

==> Installing dependencies for qemu: libidn2, nettle, libnghttp2, unbound and gnutls
==> Installing qemu dependency: libidn2
==> Pouring libidn2--2.3.3.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libidn2/2.3.3: 78 files, 1MB
==> Installing qemu dependency: nettle
==> Pouring nettle--3.8.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/nettle/3.8: 91 files, 2.9MB
==> Installing qemu dependency: libnghttp2
==> Pouring libnghttp2--1.48.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libnghttp2/1.48.0: 13 files, 739.5KB
==> Installing qemu dependency: unbound
==> Pouring unbound--1.16.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/unbound/1.16.1: 58 files, 5.6MB
==> Installing qemu dependency: gnutls
==> Pouring gnutls--3.7.6.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/gnutls/3.7.6: 1,285 files, 11MB
==> Installing qemu
==> Pouring qemu--7.0.0_1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/qemu/7.0.0_1: 162 files, 610.9MB
==> Running `brew cleanup qemu`...
Removing: /opt/homebrew/Cellar/qemu/6.2.0_1... (162 files, 557.4MB)
==> Upgrading podman
  4.1.0 -> 4.1.1 

==> Pouring podman--4.1.1.arm64_monterey.bottle.tar.gz
==> Caveats
zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
==> Summary
🍺  /opt/homebrew/Cellar/podman/4.1.1: 174 files, 46.4MB
==> Running `brew cleanup podman`...
Removing: /opt/homebrew/Cellar/podman/4.1.0... (174 files, 46.3MB)
==> Upgrading qt
  6.2.3_1 -> 6.3.1_1 

==> Installing dependencies for qt: assimp and jpeg-turbo
==> Installing qt dependency: assimp
==> Pouring assimp--5.2.4.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/assimp/5.2.4: 102 files, 9.8MB
==> Installing qt dependency: jpeg-turbo
==> Pouring jpeg-turbo--2.1.3.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/jpeg-turbo/2.1.3: 44 files, 2.5MB
==> Installing qt
==> Pouring qt--6.3.1_1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/qt/6.3.1_1: 13,001 files, 559.1MB
==> Running `brew cleanup qt`...
Removing: /opt/homebrew/Cellar/qt/6.2.3_1... (12,278 files, 489.1MB)
==> Upgrading poppler
  22.04.0 -> 22.06.0 

==> Installing dependencies for poppler: nspr, nss and openjpeg
==> Installing poppler dependency: nspr
==> Pouring nspr--4.34.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/nspr/4.34: 86 files, 1.3MB
==> Installing poppler dependency: nss
==> Pouring nss--3.80.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/nss/3.80: 211 files, 18.7MB
==> Installing poppler dependency: openjpeg
==> Pouring openjpeg--2.5.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/openjpeg/2.5.0: 533 files, 13.9MB
==> Installing poppler
==> Pouring poppler--22.06.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/poppler/22.06.0: 477 files, 29.1MB
==> Running `brew cleanup poppler`...
Removing: /opt/homebrew/Cellar/poppler/22.04.0... (477 files, 29.0MB)
==> Upgrading ansible
  5.7.1 -> 6.1.0 

==> Pouring ansible--6.1.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/ansible/6.1.0: 27,638 files, 341.9MB
==> Running `brew cleanup ansible`...
Removing: /opt/homebrew/Cellar/ansible/5.7.1... (45,845 files, 433MB)
==> Upgrading r
  4.2.0 -> 4.2.1 

==> Installing dependencies for r: isl and gcc
==> Installing r dependency: isl
==> Pouring isl--0.25.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/isl/0.25: 73 files, 7.4MB
==> Installing r dependency: gcc
==> Pouring gcc--11.3.0_2.arm64_monterey.bottle.1.tar.gz
🍺  /opt/homebrew/Cellar/gcc/11.3.0_2: 1,403 files, 246.7MB
==> Installing r
==> Pouring r--4.2.1.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/r/4.2.1: 2,281 files, 68.9MB
==> Running `brew cleanup r`...
Removing: /opt/homebrew/Cellar/r/4.2.0... (2,281 files, 68.9MB)
Removing: /Users/u0000000021/Library/Caches/Homebrew/r--4.2.0... (49.7MB)
==> Upgrading awscli
  2.6.3 -> 2.7.16 

==> Pouring awscli--2.7.16.arm64_monterey.bottle.tar.gz
==> Caveats
The "examples" directory has been installed to:
  /opt/homebrew/share/awscli/examples

zsh completions and functions have been installed to:
  /opt/homebrew/share/zsh/site-functions
==> Summary
🍺  /opt/homebrew/Cellar/awscli/2.7.16: 12,616 files, 102.4MB
==> Running `brew cleanup awscli`...
Removing: /opt/homebrew/Cellar/awscli/2.6.3... (13,288 files, 106.7MB)
==> Upgrading azure-cli
  2.36.0 -> 2.38.0 

==> Pouring azure-cli--2.38.0.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/azure-cli/2.38.0: 17,239 files, 471.9MB
==> Running `brew cleanup azure-cli`...
Removing: /opt/homebrew/Cellar/azure-cli/2.36.0... (21,075 files, 463.8MB)
==> Checking for dependents of upgraded formulae...
==> No broken dependents found!
==> Caveats
==> microk8s
Run `microk8s install` to start with MicroK8s
==> llvm
To use the bundled libc++ please add the following LDFLAGS:
  LDFLAGS="-L/opt/homebrew/opt/llvm/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib"

llvm is keg-only, which means it was not symlinked into /opt/homebrew,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have llvm first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/llvm/bin:$PATH"' >> ~/.zshrc

For compilers to find llvm you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

==> python@3.8
Python has been installed as
  /opt/homebrew/opt/python@3.8/bin/python3

Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
  /opt/homebrew/opt/python@3.8/libexec/bin

You can install Python packages with
  /opt/homebrew/opt/python@3.8/bin/pip3 install <package>
They will install into the site-package directory
  /opt/homebrew/lib/python3.8/site-packages

See: https://docs.brew.sh/Homebrew-and-Python

python@3.8 is keg-only, which means it was not symlinked into /opt/homebrew,
because this is an alternate version of another formula.

If you need to have python@3.8 first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"' >> ~/.zshrc

For compilers to find python@3.8 you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/python@3.8/lib"

For pkg-config to find python@3.8 you may need to set:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/python@3.8/lib/pkgconfig"

==> kops
zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
==> podman
zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
==> awscli
The "examples" directory has been installed to:
  /opt/homebrew/share/awscli/examples

zsh completions and functions have been installed to:
  /opt/homebrew/share/zsh/site-functions
```

:round_pushpin: Install


```
microk8s install
```
> Outputs
```
Launched: microk8s-vm                                                           
2022-07-16T09:48:17Z INFO Waiting for automatic snapd restart...
microk8s (1.22/stable) v1.22.9 from Canonical✓ installed
microk8s-integrator-macos 0.1 from Canonical✓ installed
MicroK8s is up and running. See the available commands with `microk8s --help`.
```

:round_pushpin: Verify

```
multipass list 
```
> Outputs
```
Name                    State             IPv4             Image
microk8s-vm             Running           192.168.64.8     Ubuntu 18.04 LTS
                                          10.1.254.64
```

:round_pushpin: Enable things

- [ ] Dashboard

```
microk8s enable dashboard
```
> Outputs
```
Enabling Kubernetes Dashboard
Enabling Metrics-Server
serviceaccount/metrics-server created
clusterrole.rbac.authorization.k8s.io/system:aggregated-metrics-reader created
clusterrole.rbac.authorization.k8s.io/system:metrics-server created
rolebinding.rbac.authorization.k8s.io/metrics-server-auth-reader created
clusterrolebinding.rbac.authorization.k8s.io/metrics-server:system:auth-delegator created
clusterrolebinding.rbac.authorization.k8s.io/system:metrics-server created
service/metrics-server created
deployment.apps/metrics-server created
apiservice.apiregistration.k8s.io/v1beta1.metrics.k8s.io created
clusterrolebinding.rbac.authorization.k8s.io/microk8s-admin created
Metrics-Server is enabled
Applying manifest
serviceaccount/kubernetes-dashboard created
service/kubernetes-dashboard created
secret/kubernetes-dashboard-certs created
secret/kubernetes-dashboard-csrf created
secret/kubernetes-dashboard-key-holder created
configmap/kubernetes-dashboard-settings created
role.rbac.authorization.k8s.io/kubernetes-dashboard created
clusterrole.rbac.authorization.k8s.io/kubernetes-dashboard created
rolebinding.rbac.authorization.k8s.io/kubernetes-dashboard created
clusterrolebinding.rbac.authorization.k8s.io/kubernetes-dashboard created
Warning: spec.template.spec.nodeSelector[beta.kubernetes.io/os]: deprecated since v1.14; use "kubernetes.io/os" instead
deployment.apps/kubernetes-dashboard created
service/dashboard-metrics-scraper created
deployment.apps/dashboard-metrics-scraper created

If RBAC is not enabled access the dashboard using the default token retrieved with:

token=$(microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f1)
microk8s kubectl -n kube-system describe secret $token

In an RBAC enabled setup (microk8s enable RBAC) you need to create a user with restricted
permissions as shown in:
https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/creating-sample-user.md
```

## :b: Access the control plane node

```
multipass shell microk8s-vm
```

- [ ] Useful multipass commands

    * Shutdown the VM:

```
multipass stop microk8s-vm
```

    * Delete and cleanup the VM:

```
multipass delete microk8s-vm && multipass purge
```




# References

- [ ] [Install MicroK8s on Apple M1 silicon](https://ubuntu.com/tutorials/installing-microk8s-on-apple-m1-silicon)
- [ ] [Kubernetes: microk8s with multiple Istio ingress gateways](https://fabianlee.org/2021/07/31/kubernetes-microk8s-with-multiple-istio-ingress-gateways/)

## Requirements

- jupyter notebook
- kotlin
- go
- python
- jdk ^1.8

## Setting(for Mac)

### kotlin jupyter 커널 서브모듈 세팅

```bash
./settings.sh
```

### golang jupyter 커널 세팅

https://github.com/gopherdata/gophernotes

```bash
$ env GO111MODULE=on go get github.com/gopherdata/gophernotes
$ mkdir -p ~/.local/share/jupyter/kernels/gophernotes
$ cd ~/.local/share/jupyter/kernels/gophernotes
$ cp "$(go env GOPATH)"/pkg/mod/github.com/gopherdata/gophernotes@v0.7.1/kernel/*  "."
$ chmod +w ./kernel.json # in case copied kernel.json has no write permission
$ sed "s|gophernotes|$(go env GOPATH)/bin/gophernotes|" < kernel.json.in > kernel.json
```

## Run

```bash
jupyter notebook
```

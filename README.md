# 이더리움 네트워크 구축

0. 내려받기

```
$ git clone https://github.com/pjt3591oo/multi-ethereum-network-system
$ git submodule init
$ git clone --recursive https://github.com/ethereum/go-ethereum
```

1. 이미지 파일 생성

```sh
$ docker build -t ethereum .
```

2. 컨테이너 생성

```sh
$ docker-compost up -d
```




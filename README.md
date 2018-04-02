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



#  컨테이너 접속

* 컨테이너 확인

```
$ docker ps 
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                                              NAMES
d2de7c164fe4        ethereum            "geth --networkid 46…"   45 minutes ago      Up 45 minutes       0.0.0.0:8547->8547/tcp, 0.0.0.0:30307->30307/tcp   ether.node3.com
7044555e3748        ethereum            "geth --networkid 46…"   45 minutes ago      Up 45 minutes       0.0.0.0:8545->8545/tcp, 0.0.0.0:30305->30305/tcp   ether.node1.com
ef8f315e10a9        ethereum            "geth --networkid 46…"   45 minutes ago      Up 45 minutes       0.0.0.0:8546->8546/tcp, 0.0.0.0:30306->30306/tcp   ether.node2.com
```

* 컨테이너 접속

 ```
$ docker exec -it ether.node1.com /bin/bash
$ docker exec -it ether.node2.com /bin/bash
$ docker exec -it ether.node3.com /bin/bash
 ```

* geth attach

```
$ geth attach http://localhost:8545 console
$ geth attach http://localhost:8546 console
$ geth attach http://localhost:8547 console
```

백그라운드로 실행중인 geth 실행하기
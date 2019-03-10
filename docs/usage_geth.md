# geth 명령어

* geth를 이용한 계정생성

```
# geth --datadir /home/DATA_STORE/ account new
Your new account is locked with a password. Please give a password. Do not forget this password.
Passphrase:
Repeat passphrase:
Address: {4728bb3aa7ae9c527f547d4316814894ff1d7fde}
```

* genesis block 생성

```
$ geth --datadir $PWD init genesis.block
```

* geth 실행옵션

```shell
> geth
... ---datadir "directory path"  # 커스텀 디렉토리 지정
... --identify "pjt chain"       # 내 파라이빗 노드 식별자
... --rpc                        # RPC 인터페이스 가능하게 함
... --rpcport "8545"             # RPC 포트지정
... --rpccorsdomain "*"          # 접속가능한 RPC 클라이언트 지정, *은 전체허용
... --port "33333"               # 네트워크 Listening port 설정
... init "genesis file"          # genesis파일 지정
... console                      # 출력을 콘솔로 함
```

--targetgaslimit 4712388 : gaslimit 재설정 해당 옵션이 없으면 470만으로 수렴함

```
$ geth --networkid 4649 --nodiscover --maxpeers 0 --datadir /home/glosfer/data_test console 2>> /home/test/data_test/geth.log
```



* 계정 목록 확인
```
> personal.newAccount(패스워드) # 계정생성
> eth.accounts                # 계정목록 확인
```

* 보유 이더 확인


```shell
> eth.getBalance()
> eth.getBalance(eth.accounts[0])
```

* 보상받을 지갑 확인

```shell
> eth.coinbase             # 보상받을 지갑확인
> miner.setEtherbase(이더계정) # 보상받을 지갑변경
```

* 마이닝 시작/정지

```shell
> miner.start(1) # 숫자 단위로 쓰레드 생성
> miner.stop(1) # 숫자 단위로 쓰레드 생성
```


* 블록 채굴 확인

```shell
> eth.mining           # 마이닝 확인
> eth.hashrate         # 해시속도(연산력) 확인
> eth.blockNumber      # 블록갯수 확인
> eth.getBlock(블록번호) # 블록정보 확인
```
* 송금

```shell
> eth.sendTransaction({from:보내는 계정, to:eth.받는계정, value:web3.toWei(10,"ether")})
```

* 지갑 잠금해제

```Shell
> personal.unlockAccount(eth.accounts[0])
> personal.unlockAccount(eth.accounts[0], “password”)
> personal.unlockAccount(eth.accounts[0], “password”, 0)
```

* transaction 확인

```
> eth.getTransaction(TX 해시값)  # 해당 트랜잭션 정보 확인
> eth.pendingTransactions      # 블록화 되지않은 트랜잭션 리스트
```

* peer 연결방법

```
> admin.node에 있는 encode node들을 static-nodes.json에 리스트 형태로 만들면 네트워크 형성
> mining을 켜두면 가장 먼저 채굴한 사람만 이더획득

> admin.addPeer('')으로 수동으로 추가가능
```

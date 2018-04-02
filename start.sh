# docker build -t ethereum .
# docker-compose up, docker-compost up -d
# 컨테이너 접속 docker exec -it container_name /bin/bash
# 컨테이너 생성 docker run -it container_name /bin/bash


# geth --networkid 4649 --maxpeers 3 --datadir /home/DATA_STORE console
geth --networkid 1212121212 --maxpeers 3 --datadir /home/DATA_STORE --rpc --rpcport 8545 --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --port 30305 console
geth --networkid 1212121212 --maxpeers 3 --datadir /home/DATA_STORE --rpc --rpcport 8546 --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --port 30306 console


[
    "enode://9efcdf74fbc3ee7d498c9125c87281309a844b5c4ed95ff720d87da027f8ae180af55e82f02a690d0f879aff711d438a78beb7ef45c81084245499afa94a85b2@192.168.1.32:30305",
    "enode://b77a9b7e58666c9411b34e24b93aa84e0cc5e961106c85669297ad69c22d866806717b262fc0c7da449d7f3ccf5201f1f47102b60b433c2e6c9ab706a4a91636@192.168.1.32:30306"
]

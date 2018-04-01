# docker build -t ethereum .
# docker-compose up, docker-compost up -d
# 컨테이너 접속 docker exec -it container_name /bin/bash
# 컨테이너 생성 docker run -it container_name /bin/bash

echo "$1"
# geth --networkid 4649 --maxpeers 3 --datadir /home/DATA_STORE console

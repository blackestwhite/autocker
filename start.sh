#!/bin/bash
echo "#!/bin/bash
docker-compose down
docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
docker-compose up -d" >> ./.git/hooks/post-merge
chmod +x ./.git/hooks/post-merge
chmod +x ./puller.sh
./puller.sh &
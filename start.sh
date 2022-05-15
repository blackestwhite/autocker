#!/bin/bash
cat > .git/hooks/post-merge <<- HDOC
#!/bin/bash
docker-compose down
docker-compose up -d --build
docker rm -v \$(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
docker rmi \$(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
HDOC
chmod +x ./.git/hooks/post-merge
chmod +x ./puller.sh
./puller.sh &
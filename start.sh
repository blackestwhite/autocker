#!/bin/bash
echo "#!/bin/bash
docker stop $1
docker rmi $3
docker build -t $3 .
docker run -d --rm -p $2:80 --name $1 $3" >> .git/hooks/post-merge
chmod +x ./run.sh
# ./run.sh &
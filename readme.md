test

## simple docker auto build and run after script

.git/hooks/post-merge:

```
#!/bin/bash
docker stop [cointainer-name]
docker rmi [image-name]
docker build -t [image-name] .
docker run -d --rm -p 2128:80 --name [container-name] [image-name]
```


`run` executable file:

```
#!/bin/bash

while true; do
        git pull &> /dev/null
        sleep 10
done
```

then enter:
```
chmod +x run & ./run &
```
then disown the process id
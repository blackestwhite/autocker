test

## simple docker auto build and run after post-merge

first things first 
```bash
chmod +x start.sh
```

then run
```bash
./start.sh [container-name] [port] [image-name]
```

## description

`run.sh` fetches any possible pulls from git repo, it should be execute on the server

`post-merge` is a git hook that executes, whenever any merge/pull has been occurred
## simple docker auto build and run after pull/merge

first things first 
```bash
chmod +x start.sh
```

then run
```bash
./start.sh &
```

## description

`puller.sh` fetches any possible pulls from git repo, it should be executed on the server

`post-merge` is a git hook that executes, whenever any merge/pull has been occurred

## workflow
![autocker workflow](/img/desc.png)
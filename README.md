# gotty docker

The base application in docker is [GoTTY](https://github.com/yudai/gotty) developed by [yudai](https://github.com/yudai).
Container has installed ```ssh``` and ```multitail``` to show logs from remote hosts.
If you want to run for example php clone this repo and install specific app into this container.
To able ssh connection add ssh file into container.

## Run container

Container by default start gotty terminal on port 8080 and show on webiste help message.
```
docker run --name gotty -d -p 8080:8080 kilerkarol/gotty
```

## Run custom command

You can run any linux command by adding docker variable to input.
```
docker run --name gotty -d -e gotty_var=<your command> -p 8080:8080 kilerkarol/gotty
```

## Add ssh files

For example to run some command by ssh in gotty terminal use ssh keys. Add it to `./ssh` directory.
```
docker run --name gotty -d -p 8080:8080 -v ssh:/root/.ssh kilerkarol/gotty
```

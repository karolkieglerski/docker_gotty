# gotty docker
Container has installed ```ssh``` and ```multitail``` to show logs from remote hosts.
If you want to run for example php clone this repo and install specific app into this container.
To able ssh connection add ssh file into container.

## Run container

Container by default start gotty terminal on port 8080 and show on webiste help message.

```
docker run --name gotty -d -p 8080:8080 kilerkarol/gotty
```

## Run custom command

You can run any linux by adding docker variable to input.

```
docker run --name gotty -d -e gotty_var=<your command> -p 8080:8080 kilerkarol/gotty
```

## Addins ssh files

Make sure that ssh public and private file has correct permitions.
```
docker run --name gotty -d -p 8080:8080 -v ssh:/root/.ssh kilerkarol/gotty
```

Correct partitions on ssh files:
```
-rw-------   1 karol  staff  1675 id_rsa
-rw-r--r--   1 karol  staff   392 id_rsa.pub
-rw-r--r--   1 karol  staff  2817 known_hosts
```
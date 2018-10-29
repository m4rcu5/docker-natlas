# Docker NATLAS

Docker container for [MJL85/natlas](https://github.com/MJL85/natlas), build on Python Alpine image. 

## 1. Clone repository

```
~# git clone https://github.com/m4rcu5/docker-natlas.git
```

## 2. Configure

```
docker-natlas # vim natlas.conf
```

Make sure to allow your ip ranges, domains and add your SNMP communities.

## Build Container

```
docker-natlas # docker build -t natlas .
```

## Usage

By default the container launches the network discovery module (diagram). You can override this behavior by appending your own command.

**Default: Diagram**
```
~# docker run -v $LOCAL_IMAGE_PATH:/topology_image/ -e TARGET_HOST=172.16.11.62 -e FILE_EXTENSION=png natlas
```
*Change `$LOCAL_IMAGE_PATH` to your local path where the diagram should be stored*

**Other module example**
```
~# docker run natlas get-hosts -n 172.16.11.1 -C public
```

### Environment Variables

- `$TARGET_HOST`: Root node to start scanning from.
- `$FILE_EXTENSION`: File extension for the diagram.

see: <https://github.com/MJL85/natlas#diagram>

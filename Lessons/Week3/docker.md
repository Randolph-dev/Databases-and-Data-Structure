# Docker

```shell
> docker run --name my_mysql -e MYSQL_ROOT_PASSWORD=secret -p 3333:3306 -d mysql:latest
```

To start again
```shell
> docker start my_mysql
```

To go in container
```shell
> docker exec -it my_msql bash
```

Run in the container shell
```shell
> mysql -u root -p
```

```shell
> docker run --name my_mysql -e MYSQL_ROOT_PASSWORD=secret -p 3333:3306 -d mysql:latest
-v $HOME/docshare:$HOME/sql -d my_mysql:latest
```

```shell
> mysql -u root -p <createStatement.sql
```
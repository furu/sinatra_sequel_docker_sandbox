```
$ curl -sL https://github.com/eure/kamimai/releases/download/v0.2.1/kamimai_linux_amd64 -o bin/kamimai
$ chmod +x bin/kamimai
$ curl -sL https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -o bin/wait-for-it.sh
$ chmod +x bin/wait-for-it.sh
$ cp .env.sample .env
$ docker-compose up db
$ docker-compose run app make db_create
$ docker-compose run app make db_migrate
$ docker-compose stop db
$ docker-compose up
```

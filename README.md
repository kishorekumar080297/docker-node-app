# Docker Node App hosted on Heroku

This repo holds the code for node app with Docker file.

### Prerequisites

You need to have the following installed, up and running on your machine.

```
Node.js - https://nodejs.org/en/download/
Heroku - https://devcenter.heroku.com/articles/heroku-cli
Docker Toolbox - https://docs.docker.com/toolbox/overview/
```

### Clone and Deploy

A step by step procedure that tells you how to create a docker container and deploy it on heroku

#### Clone the Repo

```
git clone https://github.com/kishorekumar080297/docker-node-app.git

cd docker-node-app

node index.js
```

#### Build and run the node app using docker locally

```
docker build -t docker-node-app .

docker run -rm  -it -p 8297:8297 docker-node-app
```

#### Deploy the app on heroku

```
heroku login

heroku container:login

heroku create <app-name>

docker build -r registry.heroku.com/<app-name>/web .

docker push registry.heroku.com/<app-name>/web

heroku container:release web -a <app-name>
```

### Deployed Successfully!

https://docker-nodejs.herokuapp.com/


### Authors
opyright (c) 2019 Kishore Kumar Govindaradjou <kishorekumar080297@gmail.com>

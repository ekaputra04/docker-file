# FROM Instruction
docker build -t ekaputrajuniawan/from from

docker image ls

# RUN Instruction
docker build -t ekaputrajuniawan/run run

docker build -t ekaputrajuniawan/run run --progress=plain --no-cache

docker image ls | grep ekaputrajuniawan

# CMD Instruction
docker build -t ekaputrajuniawan/command command

docker image inspect ekaputrajuniawan/command

docker container create --name command ekaputrajuniawan/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t ekaputrajuniawan/label label

docker image inspect ekaputrajuniawan/label

# ADD Instruction
docker build -t ekaputrajuniawan/add add

docker container create --name add ekaputrajuniawan/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t ekaputrajuniawan/copy copy

docker container create --name copy ekaputrajuniawan/copy

docker container start copy

docker container logs copy


# .dockerignore
docker build -t ekaputrajuniawan/ignore ignore

docker container create --name ignore ekaputrajuniawan/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t ekaputrajuniawan/expose expose

docker image inspect ekaputrajuniawan/expose

docker container create --name expose -p 8080:8080 ekaputrajuniawan/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t ekaputrajuniawan/env env

docker image inspect ekaputrajuniawan/env

docker container create --name env --env APP_PORT=8080 -p 8080:8080 ekaputrajuniawan/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t ekaputrajuniawan/volume volume

docker image inspect ekaputrajuniawan/volume

docker container create --name volume -p 8080:8080 ekaputrajuniawan/volume

docker container start volume

docker container logs volume

docker container inspect volume

docker container stop volume

#630b29a8c21ecb675e41e0f669be480282b22b2be645da2bd84efa4c004b0c54

docker volume ls

# WORKDIR Instruction
docker build -t ekaputrajuniawan/workdir workdir

docker container create --name workdir -p 8080:8080 ekaputrajuniawan/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t ekaputrajuniawan/user user

docker container create --name user -p 8080:8080 ekaputrajuniawan/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t ekaputrajuniawan/arg arg --build-arg app=pzn

docker container create --name arg -p 8080:8080 ekaputrajuniawan/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t ekaputrajuniawan/health health

docker container create --name health -p 8080:8080 ekaputrajuniawan/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t ekaputrajuniawan/entrypoint entrypoint

docker image inspect ekaputrajuniawan/entrypoint

docker container create --name entrypoint -p 8080:8080 ekaputrajuniawan/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t ekaputrajuniawan/multi multi

docker image ls

docker container create --name multi -p 8080:8080 ekaputrajuniawan/multi

docker container start multi

# Docker Push
docker tag ekaputrajuniawan/multi registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/ekaputrajuniawan/.docker-digital-ocean/ push registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/ekaputrajuniawan/.docker-digital-ocean/ pull registry.digitalocean.com/programmerzamannow/multi
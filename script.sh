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
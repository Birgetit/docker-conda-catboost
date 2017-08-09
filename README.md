# Docker script for conda+catboost

Installation steps:
1. Install docker
2. Clone repo
3. `docker build -t meow-docker .`
4. `docker run --name=meow -p 8888:8888 -d meow-docker ./run.sh`

Open web browser and point it to http://your.host.ip.adress:8888


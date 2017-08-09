FROM ubuntu:16.04
RUN useradd -ms /bin/bash -m meow
RUN echo meow:thePassword | chpasswd
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*
RUN echo "meow ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER meow
ADD meow-deploy/ meow-deploy/
RUN sudo /bin/chown -R meow:meow meow-deploy
RUN sudo /bin/chmod -R 755 meow-deploy
WORKDIR meow-deploy/
EXPOSE 8888
RUN sudo /usr/bin/apt-get update
RUN bash ./build.sh
CMD bash ./run.sh
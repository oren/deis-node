FROM node:0.10
RUN useradd -ms /bin/bash developer
WORKDIR /home/developer
USER developer

# add the current build context
COPY . /home/developer

EXPOSE 80

ENTRYPOINT ["node", "/home/developer/server.js"]

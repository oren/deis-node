FROM node:0.10

# add the current build context
COPY . /app

EXPOSE 80

ENTRYPOINT ["node", "/app/server.js"]

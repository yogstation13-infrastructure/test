FROM ubuntu

COPY /memes /app
WORKDIR /app

CMD ["node", "index.js"]
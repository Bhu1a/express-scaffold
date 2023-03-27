FROM node:latest
WORKDIR /app
COPY  package*.json ./
RUN npm install -g npm@9.6.2
RUN npm install express
COPY . .
EXPOSE 3000

CMD ["node", "server.js"]

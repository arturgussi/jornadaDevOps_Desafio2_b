FROM node:18.11.0

WORKDIR /app

COPY kube-news/src/package*.json ./
RUN npm install

COPY kube-news/src .

EXPOSE 8080

CMD ["node", "server.js"]

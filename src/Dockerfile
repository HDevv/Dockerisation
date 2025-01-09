FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY src ./src
COPY config ./config
COPY wait-for-it.sh ./wait-for-it.sh
RUN chmod +x ./wait-for-it.sh

EXPOSE 3000

CMD ["./wait-for-it.sh", "db:3306", "-t", "30", "--", "node", "src/app.js"]


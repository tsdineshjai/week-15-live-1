FROM node:22-alpine

WORKDIR /app

COPY . .

RUN npm install

RUN npm i prisma

RUN npm install @prisma/client

RUN npx prisma generate

RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/index.js" ]

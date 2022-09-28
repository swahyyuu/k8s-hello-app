FROM    node:alpine

WORKDIR /app

EXPOSE  7000

COPY    package.json package-lock.json ./

RUN     npm install

COPY    . ./

CMD     [ "npm", "start" ]
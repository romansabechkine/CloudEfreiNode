FROM node:20.11.0

RUN apt-get update && apt-get install git

WORKDIR /src/

RUN git clone https://github.com/missating/nodejs-todo.git

WORKDIR /src/nodejs-todo

RUN npm install

CMD node index.js
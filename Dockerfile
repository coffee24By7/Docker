FROM node:latest

RUN mkdir /delicious

COPY ./package.json /delicious
COPY ./webpack.config.js /delicious
COPY ./app /delicious

WORKDIR "/delicious"
#WORKDIR "/"

RUN npm install


ENTRYPOINT ["node", "start"]
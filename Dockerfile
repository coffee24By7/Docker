FROM node:latest

RUN mkdir /delicious

COPY ./package.json /delicious
COPY ./webpack.config.js /delicious
COPY ./app /delicious

WORKDIR "/delicious"
#WORKDIR "/"

RUN npm install

EXPOSE 7777
EXPOSE 8080

# ENTRYPOINT ["npm", "start"]
COPY ./startup.sh /delicious/startup.sh
RUN chmod 777 /delicious/startup.sh
CMD ["./startup.sh"]
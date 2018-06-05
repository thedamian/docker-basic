FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY ./app/* /usr/src/app
EXPOSE 5000
CMD [ “npm”, “start” ]
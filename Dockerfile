FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
# COPY package.json .
COPY ./app/package.json .
# install mysql client
RUN npm i -g nodemon && npm install

EXPOSE 3000 9229

CMD [ "npm", "run", "debug" ]
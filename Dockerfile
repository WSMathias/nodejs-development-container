FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
# COPY package.json .
COPY ./app/package.json .
# install mysql client
RUN npm i -g nodemon && npm install

EXPOSE 3000 9229

# add debug script to package.json to start app in debug mode
CMD [ "npm", "run", "debug" ]
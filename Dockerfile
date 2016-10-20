FROM node:0.10-onbuild

# create app directory
RUN mkdir -p /usr/src/uglyChat
WORKDIR /usr/src/uglyChat


# Install app dependencies
COPY package.json /usr/src/uglyChat/
RUN npm install


# Bundle app source
COPY . /usr/src/uglyChat


EXPOSE 3000
CMD [ "npm", "start"]

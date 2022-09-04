FROM node:alpine

WORKDIR /library_front

ENV PATH /library_front/node_modules/.bin$PATH

COPY package.json ./

COPY package-lock.json ./

RUN npm install --silent

COPY ./ ./

CMD ["npm", "start"]
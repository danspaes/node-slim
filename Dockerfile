FROM node:10.12.0-alpine

RUN mkdir -p /usr/src/ && \
    npm install -g nodemon create-react-app bootstrap reactstrap react react-dom

WORKDIR /usr/src/

ADD ./package.json /usr/src/

ENV PATH /usr/src/node_modules/.bin:$PATH

EXPOSE 3000

CMD [ "npm", "start" ]

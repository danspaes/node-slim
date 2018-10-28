FROM node:10.12.0-alpine
RUN mkdir -p /usr/src/app

ADD ./package.json /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN cd /usr/src/app/ && \
    npm install -g nodemon && \
    npm install -g create-react-app && \
    create-react-app react_js

EXPOSE 3000

WORKDIR /usr/src/app/react_js

CMD [ "npm", "start" ]

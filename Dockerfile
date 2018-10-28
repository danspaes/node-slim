FROM node:10.12.0-alpine

RUN mkdir -p /usr/src/ && \
    npm install -g \ 
    nodemon \
    node-sass-chokidar \
    npm-run-all \
    create-react-app \
    react \ 
    react-dom \
    react-router \
    react-helmet \
    react-scripts \
    react-scrollable-anchor \ 
    bootstrap \
    reactstrap


RUN 
WORKDIR rendertron
RUN npm install
RUN npm run build

ENV PORT=80
EXPOSE 80

WORKDIR /usr/src/

ADD ./package.json /usr/src/

ENV PATH /usr/src/node_modules/.bin:$PATH

EXPOSE 3000

CMD [ "npm", "start" ]

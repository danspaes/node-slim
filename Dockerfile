FROM node:10.12.0-alpine

RUN mkdir -p /usr/src/
RUN npm install -g nodemon create-react-app react react-dom react-router react-helmet react-scripts netlify-cli bootstrap reactstrap


WORKDIR /usr/src/

ADD ./package.json /usr/src/

ENV PATH /usr/src/node_modules/.bin:$PATH

EXPOSE 3000

CMD ["tail", "-f", "/dev/null"]

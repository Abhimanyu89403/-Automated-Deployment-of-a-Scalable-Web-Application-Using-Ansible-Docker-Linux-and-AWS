FROM node:18
LABEL owner="Developer"
RUN npm install -g http-server
WORKDIR /var/www/html
COPY fe.html .
EXPOSE 8000
CMD [ "node" , "index.js" ]
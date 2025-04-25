LABEL owner="Developer"
RUN npm install -g http-server
WORKDIR /usr/src/app
COPY fe.html .
CMD [ "node" , "index.js" ]
FROM NODE
LABEL owner="Developer"
RUN npm install -g http-server
WORKDIR /usr/src/app
COPY fe.html .
EXPOSE 30000
CMD [ "node" , "index.js" ]
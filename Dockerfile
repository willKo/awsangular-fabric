FROM mlaurie/aws-angular-builder:latest

RUN apt-get update
RUN apt-get install -y default-jre  --fix-missing
RUN npm install -g canvas
RUN npm install -g node-gyp 
RUN npm install -g fabric@1.7.14
RUN npm -v canvas
RUN npm -v node-gyp
RUN cd /usr/local/lib/node_modules/canvas && node-gyp rebuild

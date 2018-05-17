FROM mlaurie/aws-angular-builder:1.4.5

RUN apt-get update
RUN apt-get install -y default-jre  --fix-missing
RUN npm install -g canvas@1.6.10
RUN npm install -g node-gyp@3.6.2
RUN npm install -g fabric@1.7.14
RUN npm list canvas
RUN npm list node-gyp
RUN cd /usr/local/lib/node_modules/canvas && node-gyp rebuild

FROM mlaurie/aws-angular-builder:latest

RUN npm install -g canvas
RUN npm install -g node-gyp 
RUN npm install -g fabric@1.7.14

RUN cd /usr/local/lib/node_modules/canvas && node-gyp rebuild

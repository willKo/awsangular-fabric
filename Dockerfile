FROM mlaurie/aws-angular-builder:1.4.5

RUN apt-get update
# install java  
RUN apt-get install -y default-jre  --fix-missing
RUN echo "export JAVA_HOME=/usr/lib/jvm/default-java">>~/.bashrc
RUN apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y
RUN npm install -g canvas@1.6.10
RUN npm install -g node-gyp@3.6.2
RUN npm install -g fabric@1.7.14
RUN cd /usr/local/lib/node_modules/canvas && node-gyp rebuild

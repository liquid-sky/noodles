FROM dockerfile/nodejs 

ENV DATA_DIR /data/webapp

ADD bootstrap/ /opt/bootstrap
ADD data/webapp /data/webapp

RUN apt-get update \
 && apt-get -y upgrade \
 && npm install -g express express-generator \
 && chmod +x /opt/bootstrap/bootstrap.sh \
 && cd $DATA_DIR \
 && npm install 


CMD '/opt/environment.sh' 

FROM dockerfile/nodejs 

ENV DATA_DIR /data/webapp

ADD bootstrap/ /opt/bootstrap

RUN apt-get update \
 && apt-get -y upgrade \
 && npm install -g express express-generator \
 && chmod +x /opt/bootstrap/bootstrap.sh 


CMD '/opt/bootstrap.sh' 

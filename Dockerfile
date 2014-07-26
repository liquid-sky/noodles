FROM dockerfile/nodejs 

ENV DATA_DIR /data/webapp

ADD bootstrap/ /opt/bootstrap
ADD bin/run.sh /usr/sbin/
ADD bin/express.sh /etc/service/express/run

RUN apt-get update \
 && apt-get -y upgrade \
 && apt-get -y install runit \
 && npm install -g express express-generator \
 && chmod +x /opt/bootstrap/bootstrap.sh 


CMD 'run.sh' 

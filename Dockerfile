FROM node:8.9.1

RUN npm install -g grunt-cli yarn

RUN apt-get update && apt-get install -y ruby ruby-dev && gem install sass

RUN apt-get clean autoclean && \
	apt-get autoremove -y && \
  	rm -rf /var/lib/{apt,dpkg,cache,log}/

ADD run-node.sh /

WORKDIR /var/www/shop/alice

CMD ["bash"]
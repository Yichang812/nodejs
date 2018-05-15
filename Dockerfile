FROM node

RUN npm install -g grunt-cli

RUN apt-get update && apt-get install -y ruby-dev gcc automake libtool rubygems build-essential && gem install sass

RUN apt-get clean autoclean && \
	apt-get autoremove -y && \
  	rm -rf /var/lib/{apt,dpkg,cache,log}/

ADD run-node.sh /

WORKDIR /var/www/shop/alice

CMD ["bash"]
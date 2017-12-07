#Vboxweb Image
#TODO: Define docker-entrypoint.sh and make it parse USER and PASSWORD via file ou env variables in order to allow use of secrets

FROM php:7.2-apache
MAINTAINER andrespp@gmail.com

# Install soap
RUN apt-get update && \
  apt-get install -y --no-install-recommends --no-install-suggests \
		libxml2-dev php-soap wget unzip && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-install soap

WORKDIR /var/www

# Install vboxweb
RUN rmdir html/ && \
    wget https://downloads.sourceforge.net/project/phpvirtualbox/phpvirtualbox-5.0-5.zip && \
    unzip phpvirtualbox-5.0-5.zip && \
    rm phpvirtualbox-5.0-5.zip && \
    mv phpvirtualbox-5.0-5/ html

WORKDIR /var/www/html

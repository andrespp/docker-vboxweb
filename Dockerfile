#Vboxweb Image
#TODO: Define docker-entrypoint.sh and make it parse USER and PASSWORD via file ou env variables in order to allow use of secrets

FROM php:5.6-apache
MAINTAINER andrespp@gmail.com

#WORKDIR /usr/src/redmine/app/views/layouts

#COPY base.html.erb base.html.erb

# Install soap
RUN apt-get update && \
  apt-get install -y --no-install-recommends --no-install-suggests \
		libxml2-dev php-soap wget unzip && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-install soap

WORKDIR /var/www

# Install vboxweb
RUN rmdir html/ && \
    wget https://downloads.sourceforge.net/project/phpvirtualbox/phpvirtualbox-4.3-3.zip && \
    unzip phpvirtualbox-4.3-3.zip && \
    rm phpvirtualbox-4.3-3.zip && \
    mv phpvirtualbox-4.3-3/ html

WORKDIR /var/www/html

FROM centurylink/apache-php:latest
MAINTAINER sylviefiat <sylvie.fiat@ird.fr>

# Install packages
RUN apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
 DEBIAN_FRONTEND=noninteractive apt-get -y install supervisor pwgen && \
 apt-get -y install wget unzip php5-curl && \
 apt-get -y install mysql-client && \
 apt-get -y install postgresql-client 

# Fix permissions for apache
RUN chown -R www-data:www-data /app

EXPOSE 80

CMD ["/run.sh"]

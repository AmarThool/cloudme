FROM centos:lates
MAINTAINER ar.thool27@gmail.com 
RUN yum install -y httpd \
  zip \
  unzipDD httpds: //
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
CMD ["/user/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

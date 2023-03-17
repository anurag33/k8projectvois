FROM centos:7
MAINTAINER devopsw2022@gmail.com
RUN yum -y update && \
yum -y install httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page239/fluid-gallery.zip /var/www/html
WORKDIR /var/www/html
RUN unzip fluid-gallery.zip
RUN cp -rvf fluid-gallery/* .
RUN rm -rf fluid-gallery fluid-gallery.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

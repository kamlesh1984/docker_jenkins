FROM centos:latest
RUN yum -y install httpd
RUN yum -y install vim
COPY html/* /var/www/html/
COPY conf/* /etc/httpd/conf/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
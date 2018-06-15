FROM centos:latest
RUN yum -y install httpd
RUN yum -y install vim
COPY html/* /var/www/html/
COPY conf/* /etc/httpd/conf/
chown -R www-data:www-data /var/www/html/
chown -R www-data:www-data etc/httpd/conf/
chmod -R 700 /var/www/html/
chmod -R 700 etc/httpd/conf/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
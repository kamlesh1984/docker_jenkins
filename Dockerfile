FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./conf/ /usr/local/apache2/conf/
chmod 755 /usr/local/apache2/htdocs/

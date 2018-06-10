FROM httpd:2.4
chmod 755 ./public-html/
COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./conf/ /usr/local/apache2/conf/
chmod 755 ./public-html/

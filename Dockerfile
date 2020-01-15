FROM itconinc/linux:develop
COPY httpd.conf /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/apachectl -DFOREGROUND"]

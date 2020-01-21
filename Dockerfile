FROM itconinc/linux:develop

COPY httpd.conf /etc/httpd/conf/httpd-replace.conf

COPY run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]

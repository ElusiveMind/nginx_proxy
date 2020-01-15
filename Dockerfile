FROM itconinc/linux:develop

COPY httpd.conf /etc/httpd/conf/httpd.conf

COPY run_httpd.sh /run_httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run_httpd.sh"]

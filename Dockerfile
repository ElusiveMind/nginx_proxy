FROM centos:7

# Set our our meta data for this container.
LABEL name="Light-Weight Apache Proxy Container"
LABEL author="Michael R. Bagnall <mrbagnall@icloud.com>"
LABEL vendor="FlyingFlip Studios, LLC."
LABEL version="0.01-dev"

# Set up our standard binary paths.
ENV PATH /usr/local/src/vendor/bin/:/usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Set TERM env to avoid mysql client error message "TERM environment variable not set" when running from inside the container
ENV TERM xterm

RUN yum -y update && \
  yum -y install mod_ssl.x86_64

COPY httpd.conf /etc/httpd/conf/httpd-replace.conf

COPY run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]

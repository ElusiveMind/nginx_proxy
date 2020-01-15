FROM nginx
COPY default.conf /default.conf
#COPY proxy_headers.conf /etc/nginx/conf.d/proxy_headers.conf
COPY nginx.conf /etc/nginx/nginx.conf
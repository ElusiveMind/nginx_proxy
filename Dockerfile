FROM nginx
COPY default.conf /default.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Must start with the following command in Rancher:
# /bin/bash -c "envsubst < /default.conf > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"

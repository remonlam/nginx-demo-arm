FROM containerstack/nginx-arm:1.12.0
MAINTAINER Remon Lam [remon@containerstack.io]

COPY index.html /usr/share/nginx/html/
COPY 50x.html /usr/share/nginx/html/
COPY css/normalize.css /usr/share/nginx/html/css/
COPY css/skeleton.css /usr/share/nginx/html/css/
COPY images/picture.gif /usr/share/nginx/html/
COPY node.txt /usr/share/nginx/html/
CMD hostname > /usr/share/nginx/html/node.txt ; nginx -g "daemon off;"

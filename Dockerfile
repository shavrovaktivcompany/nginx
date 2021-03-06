FROM armv7/armhf-ubuntu

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "nginx"]
#RUN apt-get update
#RUN apt-get install -y ca-certificates nginx

#RUN apt-get update && apt-get update && apt-get install -y ca-certificates nginx && rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
#RUN ln -sf /dev/stdout /var/log/nginx/access.log
#RUN ln -sf /dev/stderr /var/log/nginx/error.log

#VOLUME ["/etc/nginx/conf.d/", "/etc/nginx/certs", "/opt/static", "/opt/media"]
EXPOSE 80 443
CMD ["nginx"]

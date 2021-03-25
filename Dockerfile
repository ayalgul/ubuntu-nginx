from ubuntu

RUN apt-get update
RUN apt-get install -y nginx
#RUN rm  -f /etc/nginx/sites-enabled/default

#COPY default /etc/nginx/sites-enabled/default
COPY 22.txt /var/www/html/22.txt
COPY 33.txt /var/www/html/33.txt
COPY ayal.txt /var/www/html/ayal.txt #I added this 

#these four commands run the same thing 
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

#CMD /usr/sbin/nginx -g daemon off 

ENTRYPOINT /usr/sbin/nginx -g daemon off 

#shutsdown after 60 minutes 
#CMD shutdown -P +60

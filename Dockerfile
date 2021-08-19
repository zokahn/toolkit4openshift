FROM registry.access.redhat.com/ubi8/ubi

RUN yum --disableplugin=subscription-manager -y install httpd nmap iputils iproute procps-ng libxslt \
	    && yum --disableplugin=subscription-manager clean all

COPY html/. /var/www/html

RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf \
		    && chgrp -R 0 /var/log/httpd /var/run/httpd /var/www/html \
			  && chmod -R g=u /var/log/httpd /var/run/httpd /var/www/html

EXPOSE 8080
CMD  httpd -D FOREGROUND

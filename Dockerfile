FROM registry.redhat.io/ubi8/ubi-minimal

RUN yum --disableplugin=subscription-manager -y install \
	  nmap iputils tcpdump \
	    && yum --disableplugin=subscription-manager clean all

USER 1001

CMD  while true; do sleep 10; done

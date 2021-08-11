FROM registry.access.redhat.com/ubi8/ubi

RUN yum --disableplugin=subscription-manager -y install nmap iputils iproute procps-ng \
	    && yum --disableplugin=subscription-manager clean all

USER 1001

CMD  while true; do sleep 10; done

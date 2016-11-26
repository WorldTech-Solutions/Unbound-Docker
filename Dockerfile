FROM centos:latest
MAINTAINER carl.gill@worldtech.io
COPY unbound.conf /usr/local/etc/unbound/
COPY unbound /unbound
RUN chmod +x /unbound
CMD /unbound -d

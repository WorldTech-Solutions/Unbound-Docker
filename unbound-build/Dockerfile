FROM centos:latest
MAINTAINER carl.gill@worldtech.io
COPY entry.sh /entry.sh
RUN yum groupinstall "Development Tools" -y && \
    yum install wget git -y && \
    yum-builddep unbound -y && \
    mkdir /build && \
    mkdir /binary && \
    chmod +x /entry.sh 
CMD /entry.sh

FROM centos:7
MAINTAINER Danila Vershinin <info@getpagespeed.com>
RUN yum -y install epel-release && \
    yum -y install rpm-build rpmdevtools rpmlint yum-utils && \
    yum groupinstall "Development Tools" && \
    yum clean all && \
    useradd builder -u 1000 -m -G users,wheel && \
    echo "builder ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
USER builder
RUN rpmdev-setuptree 

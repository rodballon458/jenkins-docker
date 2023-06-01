FROM rockylinux:9

RUN yum -y update

RUN yum -y install httpd

RUN systemctl enable httpd

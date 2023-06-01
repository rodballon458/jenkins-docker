FROM rockylinux

RUN yum -y update

RUN yum -y install httpd

RUN systemctl enable httpd
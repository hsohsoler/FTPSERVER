FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade
RUN apt install -y ftp
RUN apt install -y vsftpd
RUN useradd ftpadmin
ADD vsftpd.conf /etc/vsftpd.conf
CMD ["/usr/sbin/vsftpd"] 
EXPOSE 21

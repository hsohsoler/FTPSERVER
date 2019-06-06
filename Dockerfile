FROM ubuntu:18.04
RUN apt-get update -y
RUN apt install ftp -y
RUN apt install vsftpd -y
RUN useradd ftpadmin
ADD vsftpd.conf /etc/vsftpd.conf
CMD ["/usr/sbin/vsftpd"] 
EXPOSE 21

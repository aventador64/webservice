#Dockefile - Web Service 

RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 9000



RUN echo $'Listen 9000\n\ 
<VirtualHost *:9000> \n\
    DocumentRoot "/var/www/html/" \n\ 
    ServerName localhost \n\ 
</VirtualHost> \n'\ 
>> /etc/httpd/conf/httpd.conf

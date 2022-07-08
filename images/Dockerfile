#FROM      nginx
#RUN       rm -rf /usr/share/nginx/html/*
#RUN       echo Hello World > /usr/share/nginx/html/index.html

FROM      centos:7
RUN       yum install epel-release -y
RUN       yum install nginx -y
ENTRYPOINT ["nginx", "-g", "daemon off;"]
#ENTRYPOINT nginx -g "daemon off;"

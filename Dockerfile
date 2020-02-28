FROM nginx:latest

RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/odoo-nginx-reverse-proxy/odoo-nginx.conf
# Conf files
COPY doo-nginx-reverse-proxy/odoo-nginx.conf /etc/nginx/conf.d/

# Delete default files
RUN rm /etc/nginx/conf.d/default.conf 

# Expose 8069 port, in which the users will interact with odoo services
EXPOSE 8069
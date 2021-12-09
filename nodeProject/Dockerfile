FROM dockerfile/ubuntu

# Install Nginx.
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  chown -R www-data:www-data /var/lib/nginx
  rm -R index.nginx-debian.html
  COPY target/ /var/www/html

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["index.js"]

# Expose ports.
EXPOSE 80
EXPOSE 3000

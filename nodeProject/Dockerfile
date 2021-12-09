FROM ubuntu


# Install Nginx.
RUN apt-get install -y nginx
RUN apt-get clean
  apt-get update
  rm -R index.nginx-debian.html
  COPY target/ /var/www/html

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["node","index.js"]

# Expose ports.
EXPOSE 80
EXPOSE 3000

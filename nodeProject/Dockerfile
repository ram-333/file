FROM nginx

# Install Nginx.
RUN \
  apt-get update
  rm -R index.nginx-debian.html
  COPY target/ /var/www/html

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["index.js"]

# Expose ports.
EXPOSE 80
EXPOSE 3000

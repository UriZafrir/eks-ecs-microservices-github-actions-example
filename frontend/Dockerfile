#use amd64 docker image! otherwise crash in ecs - cloudwatch logs - exec /docker-entrypoint.sh: exec format error
# Use a base image with a Linux distribution of your choice
FROM --platform=linux/amd64 nginx:latest

# copy app to container
COPY ./html /usr/share/nginx/html

# Copy NGINX configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf

# Create a directory to store SSL certificates
RUN mkdir -p /etc/nginx/ssl

# Copy SSL certificates from the host to the container
COPY ./ssl-certificates/ /etc/nginx/ssl/

RUN nginx -t

# Expose the default Nginx port
EXPOSE 80 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]



FROM nginx:alpine

# Create nginx web root
RUN mkdir -p /usr/share/nginx/html

# Copy only web assets from root
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY svg/ /usr/share/nginx/html/svg/

EXPOSE 80

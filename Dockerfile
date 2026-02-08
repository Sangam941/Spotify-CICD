FROM nginx:alpine

# Create nginx web root
RUN mkdir -p /usr/share/nginx/html

# Copy HTML files (index.html or any other .html files)
COPY *.html /usr/share/nginx/html/

# Copy all CSS files from root
COPY *.css /usr/share/nginx/html/

# Copy JS folder
COPY script.js/ /usr/share/nginx/html/js/

# Copy SVG folder
COPY svg/ /usr/share/nginx/html/svg/

COPY music/ /usr/share/nginx/html/music/


EXPOSE 80

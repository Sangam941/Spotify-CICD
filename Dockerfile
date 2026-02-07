# Use Nginx to serve static HTML/CSS/JS
FROM nginx:alpine

# Copy all your project files to the Nginx html folder
COPY . /usr/share/nginx/html

# Expose port 3000 (default Nginx port)
EXPOSE 80

# Nginx runs by default in the container, no CMD needed

# Use the official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx web page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into the image
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx runs by default; no CMD needed

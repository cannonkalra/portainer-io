# Use the official Nginx base image
FROM nginx:1.27-bookworm


# Set the working directory to the Nginx web server directory
WORKDIR /usr/share/nginx/html

# Copy the custom index.html file into the container
COPY index.html .

# Expose port 80 for web traffic
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
# Use a lightweight web server image
FROM nginx:alpine

# Copy the HTML file into the default nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose the default HTTP port
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

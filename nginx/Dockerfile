# Use an official nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 80 to the Docker host, so we can access it from the outside
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

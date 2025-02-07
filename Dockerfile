# Use an official Maven image as the base image
FROM maven:3.8.4-jdk-11-slim

# Set the working directory inside the container
WORKDIR /action

# Copy your script and action files
COPY entrypoint.sh /entrypoint.sh

# Give execute permission to the entrypoint script
RUN chmod +x /entrypoint.sh

# Set the entry point of the action to the entrypoint script
ENTRYPOINT ["/entrypoint.sh"]

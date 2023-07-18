# Use a base image suitable for running X11 applications
FROM ubuntu:latest

# Install necessary dependencies (including x11-apps for xeyes)
RUN apt-get update && apt-get install -y \
    x11-apps

# Set the display environment variable
ENV DISPLAY=:0

# Run xeyes as the entrypoint command
CMD ["xeyes"]


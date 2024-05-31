# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install required packages
RUN apt-get update && apt-get install -y \
    usbip \
    linux-tools-$(uname -r) \
    && apt-get clean

# Load necessary kernel modules
RUN modprobe usbip-core \
    && modprobe usbip-host \
    && modprobe vhci-hcd

# Expose the usbipd daemon port
EXPOSE 3240

# Start the usbipd daemon
CMD ["usbipd", "-D"]

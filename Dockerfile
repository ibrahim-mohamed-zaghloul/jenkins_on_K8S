# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install dependencies
RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv ./kubectl /usr/local/bin/


# Install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

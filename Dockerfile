# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install dependencies
RUN apt-get update && apt install git-all -y
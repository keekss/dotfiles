# This Dockerfile is used to build a base image for development containers.
# It starts with the official Ubuntu base image and adds additional dependencies as needed.
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu
# FROM mcr.microsoft.com/devcontainers/base:ubuntu


# Clone your dotfiles repository
RUN git clone https://github.com/keekss/dotfiles.git ~/dotfiles

# Set the working directory
WORKDIR /workspace
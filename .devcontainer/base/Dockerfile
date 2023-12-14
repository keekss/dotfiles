# Start with Microsoft's Dev Containers universal linux image.
FROM mcr.microsoft.com/devcontainers/universal:linux

# Clone your dotfiles repository
RUN git clone https://github.com/keekss/dotfiles.git ~/dotfiles

# Set the working directory
WORKDIR /workspace

# Make the setup script executable and run it
COPY setup.sh /workspace/setup.sh
RUN chmod +x /workspace/setup.sh && \
    bash /workspace/setup.sh

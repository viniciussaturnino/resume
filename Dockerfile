# Use texlive image with LaTeX support
FROM texlive/texlive:latest

# Set working directory
WORKDIR /workspace

# Install additional utilities
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . .

# Container will compile when run via docker-compose
CMD ["tail", "-f", "/dev/null"]

# Dockerfile

FROM hashicorp/terraform:latest

# Install Azure CLI dependencies
RUN apk add --no-cache curl bash python3 py3-pip groff less openssl

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Set working directory
WORKDIR /workspace

# Copy your Terraform config into the container (optional)
# COPY . /workspace

ENTRYPOINT ["terraform"]

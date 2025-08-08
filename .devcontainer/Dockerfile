FROM ubuntu:22.04

# Avoid interactive prompts during installs
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    bash \
    python3 \
    python3-pip \
    software-properties-common \
    lsb-release \
    gnupg \
  && rm -rf /var/lib/apt/lists/*

# Add HashiCorp repo keys and repository
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

RUN apt-get update && apt-get install -y terraform

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Cleanup apt cache to keep image size smaller
RUN rm -rf /var/lib/apt/lists/*

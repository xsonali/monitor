FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    bash \
    python3 \
    python3-pip \
    software-properties-common

# Add HashiCorp repo
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Install terraform and azure-cli
RUN apt-get update && apt-get install -y terraform
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

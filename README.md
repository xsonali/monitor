Azure Sentinel Monitoring Terraform Configuration

This repository contains Terraform code to deploy Azure Sentinel monitoring on an existing Azure Firewall within your Azure environment.

---

Overview

The Terraform configuration in this project:

- References your existing Azure Resource Group containing the Azure Firewall
- Creates or references a Log Analytics Workspace for logs and monitoring
- Enables Microsoft Sentinel on the Log Analytics Workspace
- Configures diagnostic settings to send Azure Firewall logs to the workspace
- Sets up Sentinel scheduled alert rules for monitoring activities like RDP login attempts

---

Prerequisites

- An existing Azure Resource Group with Azure Firewall deployed
- Azure CLI installed and authenticated (az login)
- Terraform CLI installed
- Appropriate permissions to deploy Azure Sentinel and related resources
- Ensure .terraform folder is excluded from version control (see .gitignore)

---

Setup and Usage

1. Initialize Terraform

   terraform init

2. Import your existing Resource Group

   Terraform needs to know about your existing Azure Resource Group to avoid recreating it. Replace the subscription ID and resource group name with your actual values:

   terraform import azurerm_resource_group.hub-vnet-rg "/subscriptions/<your-subscription-id>/resourceGroups/<your-resource-group-name>"

   Example:

   terraform import azurerm_resource_group.hub-vnet-rg "/subscriptions/123456789000000/resourceGroups/hub-vnet-rg-m617"

3. Plan and Apply your Terraform configuration

   terraform plan
   terraform apply

---

Notes

- The .terraform directory and Terraform state files (*.tfstate) are excluded from version control via .gitignore to keep the repository clean.
- If you encounter errors related to large files when pushing to GitHub, ensure your .gitignore excludes .terraform/ and you have cleaned any previously committed large files.
- Azure Sentinel requires the Log Analytics Workspace to be onboarded properly. The Terraform configuration handles this onboarding.
- Modify alert rules or queries as needed to fit your security monitoring requirements.

---

Useful Links

- Azure Sentinel Quickstart Guide: https://learn.microsoft.com/en-us/azure/sentinel/quickstart-onboard  
- Terraform AzureRM Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs  
- Terraform Import Documentation: https://developer.hashicorp.com/terraform/cli/import

---

Support

If you encounter issues, please check the Azure Portal, Terraform docs, or raise an issue in this repository.

---

Created and maintained by Gholam Alam.

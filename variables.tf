variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "australiaeast"
}

variable "logs_rg_name" {
  description = "Name of the resource group for logs and monitoring"
  type        = string
  default     = "rg-hub-logs"
}

variable "log_analytics_workspace_name" {
  description = "Log Analytics workspace name"
  type        = string
  default     = "hub-fw-logs"
}

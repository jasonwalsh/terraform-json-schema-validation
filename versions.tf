terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "~> 3.1"
    }
  }
  required_version = ">= 1.3.0"
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.google_credentials
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
  # For local auth run `GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud auth print-access-token) terraform plan`
  # For terraform cloud auth run `GOOGLE_CREDENTIALS="CONTENT" terraform plan`
}

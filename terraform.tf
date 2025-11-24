terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.10.0"
    }
  }
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  # For local auth run `GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud auth print-access-token) terraform plan`
  # For terraform cloud auth run `GOOGLE_CREDENTIALS="CONTENT" terraform plan`
}

provider "google-beta" {
  project = var.gcp_project
  region  = var.gcp_region
  # For local auth run `GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud auth print-access-token) terraform plan`
  # For terraform cloud auth run `GOOGLE_CREDENTIALS="CONTENT" terraform plan`
}

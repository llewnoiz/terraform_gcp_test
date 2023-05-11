# gcloud services enable compute.googleapis.com
# gcloud services enable cloudresourcemanager.googleapis.com
# gcloud services enable sql-component.googleapis.com
# gcloud services enable servicenetworking.googleapis.com
# gcloud services enable iam.googleapis.com


terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.64.0"
    }
  }
}
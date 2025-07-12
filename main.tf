#main.tf
# --- a/file:///c%3A/Personal/my-data-engineering-project/Terraform_demo/main.tf
# +++ b/file:///c%3A/Personal/my-data-engineering-project/Terraform_demo/main.tf
# @@ -1,4 +1,11 @@  


terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.43.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "demo_bucket" {
  name          = var.google_storage_bucket_name
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id                  = var.google_bigquery_dataset_ID
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = var.location
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}

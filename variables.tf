# variables.tf

#GCP project and region
# These variables are used to configure the GCP provider, region and other settings.
# You can change the default values to match your GCP project and region.

# The credentials file should be a JSON file containing your service account key.
variable "credentials_file" {
  description = "Path to the GCP credentials JSON file"
  default     = "./Keys/my-creds.json"

}

# The project ID should match the one in your GCP console.
# You can set this to your GCP project ID.

variable "project_id" {
  description = "GCP project ID"
  default     = "dtc-de-course-464704"

}

# The region is the GCP region where your resources will be created.
# You can change this to any GCP region you prefer.

variable "region" {
  description = "GCP region"
  default     = "us-central1"
}

# The location is the GCP location for resources like BigQuery datasets and Storage buckets.
# You can change this to any GCP location you prefer.

variable "location" {
  description = "GCP location for resources"
  default     = "us-central1"
}

#GCP resources
# BigQuery dataset and Storage bucket

variable "google_bigquery_dataset_ID" {
  description = "BigQuery dataset name"
  default     = "demo_dataset"
}

variable "google_storage_bucket_name" {
  description = "Storage bucket name"
  default     = "dtc-de-course-464704-demo-bucket"

}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.21.0"
    }
  }
}

provider "google" {
  project = "de-zoomcamp-practice-451708"
  region  = "asia-southeast1-b"
}

resource "google_storage_bucket" "terraform-bucket" {
  name          = "de-zoomcamp-practice-451708-terraform-bucket"
  location      = "asia"
  force_destroy = true
}


resource "google_bigquery_dataset" "terraform_dataset" {
  dataset_id = "terraform_dataset"
}
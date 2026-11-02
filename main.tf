terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.9.0"
    }
  }
}

provider "google" {
  project = "upheld-conduit-278322"
  region  = "europe-west2"
}

resource "google_storage_bucket" "static" {
  name          = "national-rail-feeds"
  location      = "europe-west2"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  public_access_prevention = "enforced"
  force_destroy            = true
}

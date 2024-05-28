
provider "google" {
  credentials = file("./keyfile.json")
  project     = "qwiklabs-gcp-00-2e8a5b18c969"
  region      = "us-central1"
}

module "gcs-static-website-bucket" {
  source = "./modules/gcs-static-website-bucket"

  name       = var.name
  project_id = var.project_id
  location   = "us-central1"

  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]
}
provider "google" {
  credentials = file("./keyfile.json")
  project     = "qwiklabs-gcp-00-2e8a5b18c969"
  region      = "us-central1"
}
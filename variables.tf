variable "project_id" {
  description = "GCP project ID where the repository will be created."
  type        = string
}

variable "app_region" {
  description = "Region for the Artifact Registry repository (e.g., europe-west1)."
  type        = string
}

variable "billing_artifactory_name" {
  description = "Artifact Registry repository ID (name)."
  type        = string
}

variable "iam_project_user_email" {
  description = "Email of the service account to grant access to (e.g., sa@project.iam.gserviceaccount.com)."
  type        = string
}

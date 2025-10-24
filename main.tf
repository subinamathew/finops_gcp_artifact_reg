# Create a single Docker repository in Artifact Registry
resource "google_artifact_registry_repository" "repo" {
  project       = var.project_id
  location      = var.app_region
  repository_id = var.billing_artifactory_name
  format        = "DOCKER"
  description   = "Minimal repo for billing analysis containers."
}

locals {
  iam_project_user = "serviceAccount:${var.iam_project_user_email}"
}


# Grant writer on the repository to the provided member (non-authoritative)
resource "google_artifact_registry_repository_iam_member" "writer" {
  project    = var.project_id
  location   = var.app_region
  repository = google_artifact_registry_repository.repo.repository_id

  role   = "roles/artifactregistry.writer"
  member = locals.iam_project_user
}

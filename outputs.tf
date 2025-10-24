output "repository_id" {
  description = "Artifact Registry repository ID."
  value       = google_artifact_registry_repository.repo.repository_id
}

output "repository_name" {
  description = "Full resource name of the repository."
  value       = google_artifact_registry_repository.repo.name
}

output "location" {
  description = "Region where the repository is hosted."
  value       = google_artifact_registry_repository.repo.location
}

output "docker_repo_path" {
  description = "Canonical Docker repo path for tagging/pushing images."
  value       = "${var.app_region}-docker.pkg.dev/${var.project_id}/${var.billing_artifactory_name}"
}

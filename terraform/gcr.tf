# ---------------------------------------------
# Artifact Registry
# ---------------------------------------------
# Artifact Registryリポジトリの作成
resource "google_artifact_registry_repository" "php_laravel_book_app_repo" {
  location      = var.gcp_region
  repository_id = var.repository_id
  description   = "Docker repository for PHP Laravel Book App"
  format        = "DOCKER"
}
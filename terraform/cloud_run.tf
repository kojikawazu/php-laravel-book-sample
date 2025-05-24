# ---------------------------------------------
# Cloud Run
# ---------------------------------------------
# Google Cloud Run にデプロイするサaビス
resource "google_cloud_run_service" "php_laravel_book_app_service" {
  name     = var.service_name
  location = var.gcp_region

  metadata {
    namespace = var.gcp_project_id
  }

  template {
    spec {
      containers {
        image = "${var.gcp_region}-docker.pkg.dev/${var.gcp_project_id}/${google_artifact_registry_repository.php_laravel_book_app_repo.repository_id}/${var.app_name}"

        ports {
          container_port = var.http_port
        }
        resources {
          limits = {
            cpu    = "1000m"
            memory = "512Mi"
          }
        }

        env {
          name  = "APP_NAME"
          value = var.app_name
        }

        env {
          name  = "APP_ENV"
          value = var.app_env
        }

        env {
          name  = "APP_KEY" 
          value = var.app_key
        }

        env {
          name  = "APP_DEBUG"
          value = var.app_debug
        }

        env {
          name  = "APP_URL"
          value = var.app_url
        }

        env {
          name  = "APP_LOCALE"
          value = var.app_locale
        }

        env {
          name  = "APP_FALLBACK_LOCALE"
          value = var.app_fallback_locale
        }

        env {
          name  = "APP_FAKER_LOCALE"
          value = var.app_faker_locale
        }

        env {
          name  = "APP_MAINTENANCE_DRIVER"
          value = var.app_maintenance_driver
        }

        env {
          name  = "PHP_CLI_SERVER_WORKERS"
          value = var.php_cli_server_workers
        }
        
        env {
          name  = "BCRYPT_ROUNDS"
          value = var.app_bcrypt_rounds
        }
        
        env {
          name  = "LOG_CHANNEL"
          value = var.app_log_channel
        }
        
        env {
          name  = "LOG_STACK"
          value = var.app_log_stack
        }
        
        env {
          name  = "LOG_DEPRECATIONS_CHANNEL"
          value = var.app_log_deprecations_channel
        }
        
        env {
          name  = "LOG_LEVEL"
          value = var.app_log_level
        }
        
        env {
          name  = "DB_CONNECTION"
          value = var.app_db_connection
        }
        
        env {
          name  = "DB_HOST"
          value = var.app_db_host
        }
        
        env {
          name  = "DB_PORT"
          value = var.app_db_port
        }
        
        env {
          name  = "DB_DATABASE"
          value = var.app_db_database
        }
        
        env {
          name  = "DB_USERNAME"
          value = var.app_db_username
        }
        
        env {
          name  = "DB_PASSWORD"
          value = var.app_db_password
        }
        
        env {
          name  = "DB_URL"
          value = var.app_db_url
        }
        
        env {
          name  = "SESSION_DRIVER"
          value = var.app_session_driver
        }
        
        env {
          name  = "SESSION_LIFETIME"
          value = var.app_session_lifetime
        }
        
        env {
          name  = "SESSION_ENCRYPT"
          value = var.app_session_encrypt
        }
        
        env {
          name  = "SESSION_PATH"
          value = var.app_session_path
        }
        
        env {
          name  = "SESSION_DOMAIN"
          value = var.app_session_domain
        }
        
        env {
          name  = "BROADCAST_CONNECTION"
          value = var.app_broadcast_connection
        }
        
        env {
          name  = "FILESYSTEM_DISK"
          value = var.app_filesystem_disk
        }
        
        env {
          name  = "QUEUE_CONNECTION"
          value = var.app_queue_connection
        }
        
        env {
          name  = "CACHE_STORE"
          value = var.app_cache_store
        }
        
        env {
          name  = "CACHE_PREFIX"
          value = var.app_cache_prefix
        }
        
        env {
          name  = "MEMCACHED_HOST"
          value = var.app_memcached_host
        }
        
        env {
          name  = "REDIS_CLIENT"
          value = var.app_redis_client
        }
        
        env {
          name  = "REDIS_HOST"
          value = var.app_redis_host
        }
        
        env {
          name  = "REDIS_PASSWORD"
          value = var.app_redis_password
        }
        
        env {
          name  = "REDIS_PORT"
          value = var.app_redis_port
        }
        
        env {
          name  = "MAIL_MAILER"
          value = var.app_mail_mailer
        }
        
        env {
          name  = "MAIL_SCHEME"
          value = var.app_mail_scheme
        }
        
        env {
          name  = "MAIL_HOST"
          value = var.app_mail_host
        }
        
        env {
          name  = "MAIL_PORT"
          value = var.app_mail_port
        }
        
        env {
          name  = "MAIL_USERNAME"
          value = var.app_mail_username
        }
        
        env {
          name  = "MAIL_PASSWORD"
          value = var.app_mail_password
        }
        
        env {
          name  = "MAIL_FROM_ADDRESS"
          value = var.app_mail_from_address
        }
        
        env {
          name  = "MAIL_FROM_NAME"
          value = var.app_name
        }
        
        env {
          name  = "AWS_ACCESS_KEY_ID"
          value = var.app_aws_access_key_id
        }
        
        env {
          name  = "AWS_SECRET_ACCESS_KEY"
          value = var.app_aws_secret_access_key
        }
        
        env {
          name  = "AWS_DEFAULT_REGION"
          value = var.app_aws_default_region
        }
        
        env {
          name  = "AWS_BUCKET"
          value = var.app_aws_bucket
        }
        
        env {
          name  = "AWS_USE_PATH_STYLE_ENDPOINT"
          value = var.app_aws_use_path_style_endpoint
        }

        env {
            name = "VITE_APP_NAME"
            value = var.app_name
        }        
      }
      service_account_name = data.google_service_account.cloud_run_sa.email
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  depends_on = [
      google_artifact_registry_repository.php_laravel_book_app_repo
  ]
}

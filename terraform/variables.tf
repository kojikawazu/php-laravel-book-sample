# ---------------------------------------------
# Variables
# ---------------------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "gcp_project_id" {
  type = string
}

variable "gcp_region" {
  type = string
}

variable "repository_id" {
  type = string
}

variable "service_name" {
  type = string
}

variable "app_name" {
  type = string
}

variable "http_port" {
  type = number
}

variable "invoker_role" {
  type = string
}

variable "invoker_member" {
  type = string
}

variable "app_env" {
  type = string
}

variable "app_key" {
  type = string
}

variable "app_debug" {
  type = bool
}

variable "app_url" {
  type = string
}

variable "app_locale" {
  type = string
}

variable "app_fallback_locale" {
  type = string
}

variable "app_faker_locale" {
  type = string
}

variable "app_maintenance_driver" {
  type = string
}

variable "php_cli_server_workers" {
  type = number
}

variable "app_bcrypt_rounds" {
  type = number
}

variable "app_log_channel" {
  type = string
}

variable "app_log_stack" {
  type = string
}

variable "app_log_deprecations_channel" {
  type = string
}

variable "app_log_level" {
  type = string
}

variable "app_db_connection" {
  type = string
}

variable "app_db_host" {
  type = string
}

variable "app_db_port" {
  type = number
}

variable "app_db_database" {
  type = string
}

variable "app_db_username" {
  type = string
}

variable "app_db_password" {
  type = string
}

variable "app_db_url" {
  type = string
}

variable "app_session_driver" {
  type = string
}

variable "app_session_lifetime" {
  type = number
}

variable "app_session_encrypt" {
  type = bool
}

variable "app_session_path" {
  type = string
}

variable "app_session_domain" {
  type = string
}

variable "app_broadcast_connection" {
  type = string
}

variable "app_filesystem_disk" {
  type = string
}

variable "app_queue_connection" {
  type = string
}

variable "app_cache_store" {
  type = string
}

variable "app_cache_prefix" {
  type = string
}

variable "app_memcached_host" {
  type = string
}

variable "app_redis_client" {
  type = string
}

variable "app_redis_host" {
  type = string
}

variable "app_redis_password" {
  type = string
}

variable "app_redis_port" {
  type = number
}

variable "app_mail_mailer" {
  type = string
}

variable "app_mail_scheme" {
  type = string
}

variable "app_mail_host" {
  type = string
}

variable "app_mail_port" {
  type = number
}

variable "app_mail_username" {
  type = string
}

variable "app_mail_password" {
  type = string
}

variable "app_mail_from_address" {
  type = string
}

variable "app_aws_access_key_id" {
  type = string
}

variable "app_aws_secret_access_key" {
  type = string
}

variable "app_aws_default_region" {
  type = string
}

variable "app_aws_bucket" {
  type = string
}

variable "app_aws_use_path_style_endpoint" {
  type = bool
}
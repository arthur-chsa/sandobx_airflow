project_id                  = "sandbox-airflow-479213"
service_account_name         = "cloud-composer-3-test"
service_account_display_name = "cloud-composer-3-test"
composer_environment_name    = "cloud-composer-3-test-2"

composer_bucket_name     = "sandbox-airflow-479213-dags"
composer_bucket_location = "europe-west3"  # Optional, defaults to region

composer_bucket_iam_bindings = [
  {
    member = "serviceAccount:sa-foundations-test@cloudgcp41-foundations-test.iam.gserviceaccount.com"
    role   = "roles/storage.objectViewer"
  }
]
data "template_file" "task_definition_template" {
  template = file("task_definition.json.tpl")
  vars = {
    REPOSITORY_URL    = var.flask_app_image
    POSTGRES_USERNAME = var.rds_username
    POSTGRES_PASSWD   = var.rds_password
    POSTGRES_ENDPOINT = aws_db_instance.rds_instance.endpoint
    POSTGRES_DATABASE = var.rds_name
    FLASK_APP         = var.flask_app
    FLASK_ENV         = var.flask_env
    FLASK_APP_HOME    = var.app_home
    FLASK_APP_PORT    = var.flask_app_port
    APP_SECRET_KEY    = replace(random_string.flask-secret-key.result, "\"", "")
    REGION            = var.region
    #CLOUDWATCH_GROUP = var.cloudwatch_group

  }
}
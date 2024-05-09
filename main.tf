resource "aws_ssm_parameter" "params" {
  count     = length(var.parameters)
  name      = var.parameters[count.index].name
  type      = var.parameters[count.index].type
  value     = var.parameters[count.index].value
  overwrite = true



}

variable "parameters" {
  default = [

    ## Prod env
    { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" },
    { name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String" },
    { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.techadda.co/", type = "String" },
    { name = "prod.rds.endpoint", value = "prod-mysql.cluster-cdkoq6oem3y2.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "prod.frontend.app_version", value = "t5-arti", type = "String" },
    { name = "prod.backend.app_version", value = "t5-arti", type = "String" },


    ## Dev env
    { name = "dev.rds.master_password", value = "Expense12345", type = "SecureString" },
    { name = "dev.rds.master_username", value = "admin", type = "String" },
    { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.techadda.co/", type = "String" },
    { name = "dev.rds.endpoint", value = "prod-mysql.cluster-cdkoq6oem3y2.us-east-1.rds.amazonaws.com", type = "String" },

    ## Common env
    { name = "jenkins_password", value = "admin123", type = "SecureString" },







]
    }
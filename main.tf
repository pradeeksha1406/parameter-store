resource "aws_ssm_parameter" "params" {
  count     = length(var.parameters)
  name      = var.parameters[count.index].name
  type      = var.parameters[count.index].type
  value     = var.parameters[count.index].value

}

variable "parameters" {
  default = [
    { name = "prod.rds.master_password", value = "Expense12345", type = "SecureString" },
    { name = "prod.rds.master_username", value = "admin", type = "String" },
    { name = "prod.expense.frontend.backend_url", value = "http://backend-dev.techadda.co/", type = "String" },
    { name = "prod.rds.endpoint", value = "prod-mysql.cluster-cdkoq6oem3y2.us-east-1.rds.amazonaws.com", type = "String" },
]
    }
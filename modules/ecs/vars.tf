variable "ENV" {
  description = "Type of Environment like Prod, Dev, Staging"
  default     = "dev"
}

variable "AWS_REGION" {
  description = "Cloud Region"
}

variable "PRODUCT_NAME" {
  description = "Product Name"
  default     = "fusion"
}

variable "APPNAME" {
  description = "Application Name"
  default     = "bi-shipping"
}

variable "AIRPORT_CODE" {
  type        = map(string)
}


variable "container_definitions" {
  description = "511 tactical task defination file"
}


variable "projectNAme" {
  description = "projectNAme"
}

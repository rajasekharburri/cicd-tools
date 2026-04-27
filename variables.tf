variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "zone_name" {
  type        = string
  default     = "rajasekhartech.site"
  description = "description"
}

variable "zone_id" {
  type        = string
  default     = "Z00471191BK7Y747LU4X2"
  description = "description"
}

variable "sonar" {
  default = false
}
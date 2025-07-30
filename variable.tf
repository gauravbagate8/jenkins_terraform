variable "region" {
  type    = list(any)
  default = ["ap-south-1"]
}

variable "instance_type" {
  type = string

}

variable "instance_count" {
  type = number

}
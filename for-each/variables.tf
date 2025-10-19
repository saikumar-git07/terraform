variable "instance_names" {
  type    = map
  default = {
       db       = "t3.small"
       backend  = "t3.micro"
       frontend = "t3.micro"
  }
}

variable "common_tags" {
    type    = map
    default = {
        project   = "expense"
        terraform = "true"

  }
}

variable "domain_name" {
  default = "devopswithaws.store"
}

variable "zone_id" {
  default = "Z01037242PFYQFQ71R7F6"
}
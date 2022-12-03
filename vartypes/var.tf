variable numberofusers {
  type        = number
  default     = 3
  description = "number of iam users"
}


variable username {
  type        = string
  default     = "tfuser"
  description = " iam user name "
}

variable destroy {
  type        = bool
  default     = true
  description = "enable or disbale force destroy "
}

variable zones {
  type        = list
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  description = "description"
}

variable regionandami {
  type        = map
  default     = {
    "us-east-1" = "ami-081dc0707789c2daf"
    "us-west-1" = "ami-244dc0707789sdasas"
    "eu-west-1" = "ami-249dc070778sczmxsd"
  }
  description = "ami ids and regions "
}



variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "instance_type" {
  type        = string
  description = "EC2 Instance type"
  default = "t2.micro"
}

variable "instance_ami" {
  type        = string
  description = "EC2 Instance AMI"
  default = "ami-02cde9457e744406f"
}

variable "instance_subnet" {
  type        = string
  description = "EC2 Instance name"
  default = "subnet-04d79d90ce79f021c"
}

variable "instance_security_group" {
  type        = string
  description = "EC2 Instance name"
  default = "sg-04845bb2401e9f658"
}

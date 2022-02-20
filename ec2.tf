# Mapping Varibale Example 

resource "aws_instance" "web" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "${var.instance_type}"["ap-south-1"]   ## THis is for Mapping  
  tags = {
    Name = "HelloWorld"
  }
}


## Variable for Mapping

variable "instance_type" {
   type = map 
   default = {
     us-east-1 ="t2.micro"
     us-west-2 = "t2.nano"
     ap-south-1 = "t2.large"
   
   }
  
}

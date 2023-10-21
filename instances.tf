
resource "aws_instance" "code_iac" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
    key_name = "iac_code_key"
  tags = {
    Name = "code_iac"
  }
}
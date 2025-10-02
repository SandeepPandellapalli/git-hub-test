
        resource "aws_s3_bucket" "data_lake" {
          bucket = "my-data-lake-bucket"
          
          versioning {
            enabled = true
          }
          
          server_side_encryption_configuration {
            rule {
              apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
              }
            }
          }
        }
        
        resource "aws_ec2_instance" "web_server" {
          ami           = "ami-12345678"
          instance_type = "t3.micro"
          
          vpc_security_group_ids = ["sg-12345678"]
          monitoring             = true
        }
        
        resource "aws_security_group" "web_sg" {
          name        = "web-security-group"
          description = "Security group for web servers"
          
          ingress {
            from_port   = 80
            to_port     = 80
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
          
          egress {
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            cidr_blocks = ["0.0.0.0/0"]
          }
        }
        
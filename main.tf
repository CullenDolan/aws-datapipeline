terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "LOOK THIS UP"
     }
   }
 }
provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "test-tf-pipeline-bucket" {
  bucket = "test-tf-pipeline-aim-policy"
}



{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject",
                "s3:RestoreObject",
                "s3:GetObjectVersion"
            ],
            "Resource": "arn:aws:s3:::[BUCKETNAME]/[FOLDERNAME]"
        }
    ]
}

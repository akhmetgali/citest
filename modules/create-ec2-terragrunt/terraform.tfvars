terragrunt = {
  terraform {}

  remote_state {
    backend = "s3"

    config {
      encrypt = true
      bucket = "terraform-tfstate-file-storage-us-east"
      key = "devops-1839-vault-cluster-test.tfstate"
      region = "us-west-1"
      encrypt = true
      dynamodb_table = "terraform-lock-table"
    }
  }
}

aws_region="us-west-1"
key_path="~/Documents/keys/gl"
ami="ami-011b6930a81cd6aaf"
instance_type="t2.micro"
key_name="gl"
subnet_id="subnet-0eed17fcb2b70ef1a"
security_groups="sg-002af06d85b61317b"
test = "bbb"


//6513550f278b89112631accfd34d3d7428d3f990
//
//4TBGP2UpZnQXueHcKkbYe3k73nQg3JR8Pdz2gMv8
#Step 1
create main.tf outputs.tf variables.tf versions.tf to create aws vpc and ec2
use terraform module

main.tf
https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

versions.tf
https://registry.terraform.io/providers/hashicorp/aws/latest

variables.tf
https://developer.hashicorp.com/terraform/language/values/variables

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}


2. Connect with Github
Setting/DeploverSetting/Personal access tokens/Generate new token(classic)
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

gh auth login --with-token <<< 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
gh auth status

5. Create GitRep
gh repo create tf-git-eks-k8s --private --source=. --remote=upstream --push

# goto repo you want to work with
git config user.name "amhmaster"
git config user.email "aungmyoheinawsmaster@gmail.com"


#working with github.com.amhmaster reop
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github.com.amhmaster
ssh -T git@github.com



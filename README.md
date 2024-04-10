# [# Terraform-AWS](https://www.hashicorp.com/blog/infrastructure-as-code-in-a-private-or-public-cloud

## https://www.terraform.io/

```
Company: HippoTech
Product: CRM
Customers: Hospitality
Deploying Products: HippoTech
Possible Deployment Scenarios:
	On-premises/VmWare/OpenStack
	Azure:
		ARM Templates
		Azure CLI/Powershell
		Azure SDK
	AWS:
		Cloudformation
		AWS CLI
		AWS SDK
	GCP:
		GCLOUD SDK
		GCLOUD CLI
```
###	App Architecture:

## Infrastructure as Code (IaC):
	This means expressing our infra needs in the form of some template.
	While creating/realizing the infra, pass the dynamic values.
## Terraform:
	IaC which runs on any virtual platform
## What do we have to do
	Define your infrastructure as a template in Terraform
	Execute the template to create infrastructure.
## In which Language do we need to write these templates?
	Hashicorp Configuration Language (HCL)
Here we express what we want in the template which is referred as Desired State
Now when execute terraform will try to create infra to match your Desired State.
Idempotence: This is property which states that executing once or multiple times will have the same result
For infra-provisioning we need a template which helps in meeting desired state and is idempotent.
There are two popular tools
	Terraform
	Pulumi

## Windows System Setup
### Ensure your os is greater or Window 10
	Softwares:
	Chocolatey https://docs.chocolatey.org/en-us/choco/setup
	Git for windows: https://git-scm.com/download/win
	Terminal: Windows Terminal : From microsoft store on windows 10
	IDE: Visual Studio Code choco install vscode -y
	Terraform: choco install terraform -y
## Mac System Setup
	Ensure you install homebrew https://brew.sh/
	Git: brew install git -y
	Visual Studio Code brew install --cask visual-studio-code -y
	Terraform brew install terraform -y
## Terraform Setup and configuration
	Create a new folder hello_tf and open visual studio code.
	In the visual studio code install extension terraform (hashicorpTerraform)


### To Do similar stuff on terraform, we need to understand some terms
```
## Provider: Provider tells terraform where do you want to create the infra, Generally there will be authentication details as well.
## Resource : The infra component which we want to create, while creating resouce we need to pass some arguments

To write the template
-------------------------
Provider for AWS https://registry.terraform.io/providers/hashicorp/aws/latest/docs
Resource for S3 bucket
```
What we found:
provider => aws
resource => aws_s3_bucket

## Syntax for provider
```
provider "<name of provider>" {
    argument_1 = "value_1"
    ...
    argument_n = "value_n"
}
```
Argument in Terraform is the input given by the user
All the arguments for AWS Provider https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference
Still we need to configure authentication, ignoring that the template is as shown below
```
provider "aws" {
    region = "ap-south-1"
}
```

### Lets look at arguments of s3 bucket resource https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference

To Create a resource
```
resource "<type-of-resource>" "<name for reference in tf tempalte>" {
    argument_1 = "value_1"
    ...
    argument_n = "value_n"

}
```

### Lets add the s3 resource to the template
```
provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "first_bucket"  {
    bucket = "hippojan08"
}
```	

### While configuring Provider, Authentication has to be configured

### For AWS Provider Authentication https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration

### https://sst.dev/chapters/create-an-iam-user.html steps to create access key and secret key

For working with terrafom open terminal , cd into folder where we have terraform templates.

* init => Downloads the necessary providers into .terraform folder 
* validate => verify the template for configuration being valid or not 
* apply => creates/updates the infrastructure 


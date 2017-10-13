#!/bin/sh
# not necessary anymore in newer terraform versions, you can use a backend.tf file
if [ "`terraform --version |head -n1`" == "Terraform v0.10.7" ] ; then
  terraform remote config -backend=s3 -backend-config="bucket=thom-terraform" -backend-config="key=terraform/terraform.tfstate" -backend-config="region=us-east-1"
fi

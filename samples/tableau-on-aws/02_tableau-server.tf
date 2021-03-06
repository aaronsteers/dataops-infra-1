module "tableau_server_on_aws" {
  # source                = "git::https://github.com/slalom-ggp/dataops-infra.git//catalog/aws/tableau-server?ref=master"
  source        = "../../catalog/aws/tableau-server"
  name_prefix   = local.name_prefix
  resource_tags = local.resource_tags
  environment   = module.env.environment

  # CONFIGURE HERE:

  num_linux_instances   = 0
  num_windows_instances = 0

  /*
  # OPTIONALLY, COPY-PASTE ADDITIONAL SETTINGS FROM BELOW:

  ec2_instance_type     = "p3.8xlarge"
  ec2_instance_type     = "m4.4xlarge"
  admin_cidr            = []
  default_cidr          = ["0.0.0.0/0"]
  */
}

output "summmary" { value = module.tableau_server_on_aws.summary }

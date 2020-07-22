terraform {
  backend "gcs" {
    bucket = "bolbeckterraformstate-1"
    prefix = "jx"
  }
}

module "jx" {
  source = "jenkins-x/jx/google"
  gcp_project = "nodal-fountain-283919"
  cluster_name = "tf-jx-fond-mantis"
  force_destroy = true
}

output "jx_requirements" {
  value = module.jx.jx_requirements
}

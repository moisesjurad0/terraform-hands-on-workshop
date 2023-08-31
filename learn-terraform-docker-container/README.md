
# Quick start tutorial

<https://developer.hashicorp.com/terraform/tutorials/docker-get-started/install-cli>

```sh
mkdir learn-terraform-docker-container
cd learn-terraform-docker-container

# create main.tf and insert this 
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}
```

```sh
terraform init
terraform apply
http://localhost:8000/
docker ps
terraform destroy
```

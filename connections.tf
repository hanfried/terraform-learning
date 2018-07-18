provider "google" {
  credentials = "${file(".credentials/hanfried-terraform-learning-3d5ec50ce95e.json")}"
  project = "hanfried-terraform-learning"
  region = "europe-west3"
}

provider "aws" {
  region = "eu-central-1"
}

provider "azurerm" {
  subscription_id = "0"
  client_id = "1"
  client_secret = "2"
  tenant_id = "3"
}

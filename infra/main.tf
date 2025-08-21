terraform {
  required_version = "~> 1.6"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

provider "random" {}

# Creates a random, human-readable pet name locally (no cloud required)
resource "random_pet" "example" {
  length = 2
}

output "pet_name" {
  description = "A random pet name generated during plan/apply"
  value       = random_pet.example.id
}

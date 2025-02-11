# Resource: VPC
resource "google_compute_network" "myvpc" {
  name = "vpc1"
  auto_create_subnetworks = false   
}

# Resource: Subnet
resource "google_compute_subnetwork" "mysubnet" {
  name = "${var.gcp_region1}-subnet" #2 subnet are going to create thats why we added & sign to auto matically rename the 2nd subnet
  region = var.gcp_region1
  ip_cidr_range = "10.128.0.0/20"
  network = google_compute_network.myvpc.id 
}

## VPC Network 
resource "google_compute_network" "network" {
  #   name                    = "vpc-network" ## VPC Network 이름 작성
  name                    = var.vpc_name
  auto_create_subnetworks = false ## 자동으로 서브넷을 생성할 것인지
  mtu                     = 1460  ## MTU 크기
}

# resource "null_resource" "kubectl" {
#   provisioner "local-exec" {
#   command = "aws eks --region eu-central-1 update-kubeconfig --name commit-cluster"
#   }
# }

# provider "kubernetes" {
#   config_path = "~/.kube/config"  # Update with the path to your kubeconfig file
# }

# resource "kubernetes_deployment" "openresty_deployment" {
#   metadata {
#     name = "openresty-deployment"
#   }

#   spec {
#     replicas = 1

#     selector {
#       match_labels = {
#         app = "openresty"
#       }
#     }

#     template {
#       metadata {
#         labels = {
#           app = "openresty"
#         }
#       }

#       spec {
#         container {
#           name  = "openresty"
#           image = "463865334882.dkr.ecr.eu-central-1.amazonaws.com/commit-fargate-openresty:latest"

#           port {
#             container_port = 80
#           }

#           port {
#             container_port = 443
#           }
#         }
#       }
#     }
#   }
# }

# resource "kubernetes_service" "openresty_service" {
#   metadata {
#     name = "openresty-service"
#   }

#   spec {
#     selector = {
#       app = "openresty"
#     }

#     port {
#       name       = "http"
#       protocol   = "TCP"
#       port       = 80
#       target_port = 80
#     }

#     port {
#       name       = "https"
#       protocol   = "TCP"
#       port       = 443
#       target_port = 443
#     }

#     type = "LoadBalancer"
#   }
# }

#output "service_url" {
#  value = try(kubernetes_service.openresty_service.metadata[0].annotations["service.beta.kubernetes.io/aws-load-balancer-external"], null)
#}
output "APP_NAME" {
  value = kubernetes_service.basic_app_service.metadata[0].name
}

output "LOAD_BALANCER" {
  value = data.kubernetes_service.basic_app_service_data.status[0].load_balancer[0]
}

output "INGRESS" {
  value = kubernetes_ingress_v1.basic_app_ingress
}

# output "APP_IP" {
#   value = data.kubernetes_service.basic_app_service_data[0].status.load_balancer.ingress[0].ip
# }

# output "APP_URL" {
#   value = data.kubernetes_service.basic_app_service_data[0].status.load_balancer.ingress[0].hostname
# }

# output "APP_PORT" {
#   value = [for svc in data.kubernetes_service.basic_app_service_data : svc.spec[0].port[0].port]
# }

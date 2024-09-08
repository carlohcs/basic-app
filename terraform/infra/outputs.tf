output "APP_IP" {
  value = data.kubernetes_service.basic_app_service_data.status.load_balancer.ingress[0].ip
}

output "APP_URL" {
  value = data.kubernetes_service.basic_app_service_data.status.load_balancer.ingress[0].hostname
}
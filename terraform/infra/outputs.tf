output "APP_NAME" {
  value = kubernetes_service.basic_app_service.metadata[0].name
}

output "APP_IP" {
  value = [for svc in data.kubernetes_service.basic_app_service_data : svc.status.load_balancer.ingress[0].ip]
}

output "APP_URL" {
  value = [for svc in data.kubernetes_service.basic_app_service_data : svc.status.load_balancer.ingress[0].hostname]
}

output "APP_PORT" {
  value = [for svc in data.kubernetes_service.basic_app_service_data : svc.spec[0].port[0].port]
}

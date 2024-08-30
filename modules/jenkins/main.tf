resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.jenkins.io/"
  create_namespace = true
  namespace = "jenkins"
  chart      = "jenkins"
  version    = "4.9.1"

  set {
    name  = "persistence.enabled"
    value = "false"
  }
}
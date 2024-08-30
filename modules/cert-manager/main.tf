resource "helm_release" "cert-manager" {
  name       = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  namespace  = "cert-manager"
  create_namespace = true
  version    = var.version

  #values = [
  #  "${file("values.yaml")}"
  #]

  set {
    name  = "installCRDs"
    value = "true"
  }
}

resource "helm_release" "cert-manager" {
  name       = "issuer"
  chart      = "./chart"

  #values = [
  #  "${file("values.yaml")}"
  #]

  set {
    name  = "installCRDs"
    value = "true"
  }
}
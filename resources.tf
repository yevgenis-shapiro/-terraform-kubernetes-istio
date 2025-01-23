resource "helm_release" "crossplane" {
  name             = "crossplane"
  repository       = "https://charts.crossplane.io/stable"
  chart            = "crossplane"
  namespace        = "crossplane-system"
  create_namespace = true
  timeout          = 300
  depends_on = [helm_release.ingress_nginx]

  set {
    name  = "replicas"
    value = "1"
  }
  set {
    name  = "deploymentStrategy"
    value = "RollingUpdate"
  }
  set {
    name  = "image.repository"
    value = "xpkg.upbound.io/crossplane/crossplane"
  }

  set {
    name  = "image.tag"
    value = "alpha"
  }

  set {
    name  = "image.pullPolicy"
    value = "Always"
  }
}

resource "null_resource" "wait_for_crossplane" {
  triggers = {
    key = uuid()
  }

  provisioner "local-exec" {

    command = <<EOF
      printf "\nWaiting for the crossplane pods to start...\n"
      sleep 5
      until kubectl wait -n ${helm_release.crossplane.namespace} --for=condition=Ready pods --all; do
        sleep 2
      done  2>/dev/null
    EOF
  }

  depends_on = [helm_release.crossplane]
}

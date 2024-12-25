## Crossplane - The Multi Cloud Native Control Plane Framework
![1_xEq1gMJ7GslwivINYkGB-g](https://github.com/user-attachments/assets/daba80a7-fbf7-4d07-a667-7c8423553ca3)

### Provider Kubernetes  | ⭐⭐⭐ Yevgeni ⭐⭐⭐
Crossplane is the cloud native control plane framework that allows you to build control planes without needing to write code. Crossplane has a highly extensible backend that enables you to orchestrate applications and infrastructure no matter where they run and a highly configurable frontend that lets you define the declarative API it offers.

✅ Requirements

Hardware Specification : Will be soon 

🎯 Installation

How to launch a Crossplane : 

🚀



## Kubernetes
```
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-kubernetes
spec:
  package: xpkg.upbound.io/upbound/provider-kubernetes:v0.16.0
```
## AWS
```
apiVersion: aws.upbound.io/v1beta1
kind: ProviderConfig
metadata:
  name: default
spec:
  credentials:
    source: Secret
    secretRef:
      namespace: crossplane-system
      name: aws-secret
      key: creds
```
## Google
```
apiVersion: gcp.upbound.io/v1beta1
kind: ProviderConfig
metadata:
  name: default
spec:
  projectID: 
  credentials:
    source: Secret
    secretRef:
      namespace: crossplane-system
      name: gcp-secret
      key: creds
```

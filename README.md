## Crossplane - The Cloud Native Control Plane Framework

![crossplane-eks-diagram-1 9264d000198409ac30f9b48ef490a37d1f23aa8c](https://github.com/user-attachments/assets/1d4ea242-3f22-4e3b-ac8b-881c35a36fe3)

### Provider Kubernetes  | ⭐⭐⭐ Yevgeni ⭐⭐⭐
Crossplane is the cloud native control plane framework that allows you to build control planes without needing to write code. Crossplane has a highly extensible backend that enables you to orchestrate applications and infrastructure no matter where they run and a highly configurable frontend that lets you define the declarative API it offers.

✅ Requirements

Hardware Specification : Will be soon 

🎯 Installation

How to launch a Crossplane : 

🚀



## 
```
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-kubernetes
spec:
  package: xpkg.upbound.io/upbound/provider-kubernetes:v0.16.0

```

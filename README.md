## Crossplane - The Cloud Native Control Plane Framework
 

### Kubernetes Provider  | ⭐⭐⭐ Yevgeni ⭐⭐⭐
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

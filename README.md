## Crossplane - The Multi Cloud Native Control Plane Framework
![1_xEq1gMJ7GslwivINYkGB-g](https://github.com/user-attachments/assets/daba80a7-fbf7-4d07-a667-7c8423553ca3)

### Provider Kubernetes  | ⭐⭐⭐ Yevgeni ⭐⭐⭐
Crossplane is the cloud native control plane framework that allows you to build control planes without needing to write code. Crossplane has a highly extensible backend that enables you to orchestrate applications and infrastructure no matter where they run and a highly configurable frontend that lets you define the declarative API it offers.

🚀 Key Features of Crossplane 

```
✅ Unified API for Cloud Resources:
Crossplane integrates cloud resources into Kubernetes using CRDs. This means you can manage cloud infrastructure alongside Kubernetes workloads using a single API
✅ Multi-Cloud Management:
Crossplane supports multiple cloud providers like AWS, Azure, and Google Cloud. You can use the same API to manage resources across different cloud platforms
✅ Declarative Infrastructure Management:
Like Kubernetes resources, Crossplane allows you to define your desired infrastructure state declaratively. Once defined, Crossplane continuously reconciles your infrastructure to match this state.
✅ Composable Infrastructure:
Crossplane lets you bundle multiple cloud resources together into higher-level abstractions, called Compositions and Composite Resources (XRs), allowing for reusable and simplified infrastructure components.
✅ Kubernetes-Native GitOps:
Crossplane works well with GitOps practices, enabling teams to manage cloud infrastructure in the same way they manage Kubernetes workloads: declaratively and with continuous reconciliation.
✅ Community and Ecosystem:
Being an open-source project, Crossplane has a growing community and a rich ecosystem of providers and compositions that you can leverage.
```

🎯 Example of Configuration

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

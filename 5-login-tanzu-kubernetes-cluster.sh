## 5. Login to TKC (Tanzu Kubernetes Cluster)

export SCP=192.168.30.34
export TKC_NS=first-ns
export VSPHERE_USERNAME=administrator@vsphere.local
export KUBECTL_VSPHERE_PASSWORD=VMware1!
export TKC=tkc-01

kubectl vsphere login \
--server=$SCP \
--tanzu-kubernetes-cluster-namespace=$TKC_NS \
--tanzu-kubernetes-cluster-name=$TKC \
--vsphere-username=$VSPHERE_USERNAME \
--insecure-skip-tls-verify

kubectl config use-context $TKC

## 2. Login to wcp (Tanzu Supervisior Cluster)

export SCP=192.168.30.34
export TKC_NS=first-ns ## 於 vCenter UI 上建立
export VSPHERE_USERNAME=administrator@vsphere.local
export KUBECTL_VSPHERE_PASSWORD=VMware1!

kubectl vsphere login \
--server=$SCP \
--vsphere-username=$VSPHERE_USERNAME \
--insecure-skip-tls-verify

kubectl config use-context $TKC_NS

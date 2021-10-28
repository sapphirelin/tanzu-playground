### list all vSphere Supervisor Namespace (TKC_NS)
kubectl config get-contexts

### Check TKC_NS Settings
kubectl describe ns $TKC_NS


#### ---------------------------------------------------------------
#### before assign Storage Policies in vCenter
#### ---------------------------------------------------------------
# $ kubectl describe ns first-ns
# Name:         first-ns
# Labels:       kubernetes.io/metadata.name=first-ns
#               vSphereClusterID=domain-c1006
# Annotations:  ls_id-0: e87463d0-f142-44f7-8c3b-e0d849b58fe9
#               ncp/extpoolid: domain-c1006:19677842-d097-4df6-b428-bceb1cf631c9-ippool-192-168-30-65-192-168-30-94
#               ncp/router_id: t1_a41909b9-ea00-4d86-b3f3-82594e15eb56_rtr
#               ncp/snat_ip: 192.168.30.66
#               ncp/subnet-0: 10.244.0.16/28
#               vmware-system-resource-pool: resgroup-8027
#               vmware-system-vm-folder: group-v8028
# Status:       Active
# 
# No resource quota.
# 
# No LimitRange resource.

#### ---------------------------------------------------------------
#### after assign ‘K8S Storage Policy’ Storage Policies in vCenter
#### ---------------------------------------------------------------
# $ kubectl describe ns first-ns
# Name:         first-ns
# Labels:       kubernetes.io/metadata.name=first-ns
#               vSphereClusterID=domain-c1006
# Annotations:  ls_id-0: e87463d0-f142-44f7-8c3b-e0d849b58fe9
#               ncp/extpoolid: domain-c1006:19677842-d097-4df6-b428-bceb1cf631c9-ippool-192-168-30-65-192-168-30-94
#               ncp/router_id: t1_a41909b9-ea00-4d86-b3f3-82594e15eb56_rtr
#               ncp/snat_ip: 192.168.30.66
#               ncp/subnet-0: 10.244.0.16/28
#               vmware-system-resource-pool: resgroup-8027
#               vmware-system-vm-folder: group-v8028
# Status:       Active
# 
# Resource Quotas
#   Name:                                                            first-ns-storagequota
#   Resource                                                         Used  Hard
#   --------                                                         ---   ---
#   k8s-storage-policy.storageclass.storage.k8s.io/requests.storage  0     9223372036854775807
# 
# No LimitRange resource.

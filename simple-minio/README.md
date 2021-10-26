a simple client-server minio, for demo only.

## Prerequisites

### Kubernetes Cluster
- must have default storage class
  ```
  $ kubectl get sc
  ```
- harbor CA installed if needed

### Harbor
- a project name: `minio`, allow docker pull/push.

### Get minio images (私訊提供連結)
- push these images in the project: `minio-latest.tar` and `mc-latest.tar`
  ```
  $ docker load -i minio-latest.tar
  $ docker load -i mc-latest.tar

  $ docker tag minio/minio:latest harbor.example.com/minio/minio:latest
  $ docker tag minio/mc:latest  harbor.example.com/minio/mc:latest

  $ docker push harbor.example.com/minio/minio:latest
  $ docker push harbor.example.com/minio/mc:latest
  ```


## Start Deploy

1. Change Registry URL as yours e.g. harbor.example.com
  ```
  $ sed -i 's#REGISTRY_URL#harbor.example.com#g' minio-template.yaml
  ```
2. Default Access-Key/Secret-Key = minio/minio123, apply `minio-template.yaml`
  ```
  $ kubectl apply -f minio-template.yaml
  ```
3. Check if ready
  ```
  $ kubectl get pod -n minio
  NAME                     READY   STATUS      RESTARTS   AGE
  minio-6f69cf56b7-bpcff   1/1     Running     0          3d18h
  minio-setup-gt2lq        0/1     Completed   3          3d18h
  ```
4. Get minio url, e.g. http://192.168.0.9:9000
  ```
  kubectl get svc -n minio
  NAME    TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
  minio   LoadBalancer   172.22.224.68   192.168.0.9   9000:32149/TCP   3d18h
  ```
5. Login with default Access-Key/Secret-Key
![image](https://user-images.githubusercontent.com/30453370/138801446-3c5c72f9-4a8b-4c53-8be1-0b9aad413520.png)

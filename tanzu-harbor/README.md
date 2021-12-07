# Tanzu Harbor Extension
由 VMware 原廠簽署的 harbor 版本

## 前置作業
* 建立一座 TKC
* Contour 已經安裝到該 TKC

## 安裝 Harbor

0. tkgs TKC 請先安裝 kapp-controller (tkgm 已經預安裝)
    ```sh
    kubectl apply -f ../../kapp-controller.yaml
    ```
1. 新增 ns & roles
    ```sh
    kubectl apply -f namespace-role.yaml
    ```
3. 複製 `harbor-data-values.yaml.example` 為 `harbor-data-values.yaml`

    ```sh
    cp harbor-data-values.yaml.example harbor-data-values.yaml
    ```

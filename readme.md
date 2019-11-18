#腾讯云TSF SpringCloud Demo工程#

##说明##

本工程为[TSF Demo 工程](https://cloud.tencent.com/document/product/649/20261)添加如下功能：

* 添加Dockerfile & entrypoint.sh 模板，参见provider-demo子工程
* 添加docker-compose支持，参见主工程docker-compose.yml
* 打开全部Spring Boot Actuator endpoints，参见provider-demo子工程application.yml
* 添加Prometheus支持，参见provider-demo子工程pom.xml
* 

##启动命令##

```
docker-compose up
```

##构建命令##

```
docker-compose build
```

##部署命令##

```
kubectl apply -f k8s.yml
```

##设置Prometheus Operator service monitor命令##

```
kubectl apply -f service-monitor.yml
```

##其他命令##

```
docker tag 10.7.116.236:31104/tsf_100000013/provider-demo 10.7.116.236:31104/tsf_100000013/provider-demo:v1.0
docker push 10.7.116.236:31104/tsf_100000013/provider-demo:v1.0

docker tag 10.7.116.236:31104/tsf_100000013/consumer-demo 10.7.116.236:31104/tsf_100000013/consumer-demo:v1.0
docker push 10.7.116.236:31104/tsf_100000013/consumer-demo:v1.0

docker run -it --entrypoint "sh" 10.7.116.236:31104/tsf_100000013/provider-demo:v1.0


docker build -t 10.7.116.236:31104/tsf_100000013/collect-service:v1.0 .
docker push 10.7.116.236:31104/tsf_100000013/collect-service:v1.0 

```
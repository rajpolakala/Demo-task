#Prometheus
###helm install prometheus-sample  stable/prometheus --set server.service.type=LoadBalancer

###export PROMETHEUS_SERVICE_ADDR=$(kubectl get svc --namespace default prometheus-sample-server -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
echo http://$PROMETHEUS_SERVICE_ADDR:80

#Grafana
###helm install grafana-sample  stable/grafana --set service.type=LoadBalancer

export GRAFANA_SERVICE_ADDR=$(kubectl get svc --namespace default grafana-sample -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
echo http://$GRAFANA_SERVICE_ADDR:80

Read the Grafana admin password by running:

###kubectl get secret --namespace default grafana-sample -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

#MySQL

mysqlRootPassword
mysqlUser
mysqlPassword
mysqlDatabase
configurationFiles.mysql.cnf
metrics.enabled
metrics.annotations
metrics.flags

###helm install mysql-sample -f https://raw.githubusercontent.com/yyarmoshyk/mysql-kubernetes-with-prometheus-exporter/master/values.yaml stable/mysql

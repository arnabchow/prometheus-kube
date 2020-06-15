FROM centos:latest

COPY prometheus-2.18.1.linux-amd64.tar.gz /

RUN tar -xzf prometheus-2.18.1.linux-amd64.tar.gz

RUN mkdir /prom_data

CMD ./prometheus-2.18.1.linux-amd64/prometheus --config.file=/prometheus-2.18.1.linux-amd64/prometheus.yml --storage.tsdb.path=/prom_data && tail -f /dev/null
 
EXPOSE 9090


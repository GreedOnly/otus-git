apt update && apt install apt-transport-https -y
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee /etc/apt/sources.list.d/elastic-7.x.list
apt update && apt install elasticsearch
systemctl daemon-reload
systemctl enable elasticsearch.service
systemctl start elasticsearch.service

apt install curl -y
cp /vagrant/elasticsearch.yml /etc/elasticsearch/
systemctl restart elasticsearch.service
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
apt update && apt install kibana
systemctl daemon-reload
systemctl enable kibana.service
systemctl start kibana.service
cp /vagrant/kibana.yml /etc/kibana/  
systemctl restart kibana.service

apt install logstash
systemctl enable logstash.service        
cp input.conf /etc/logstash/conf.d
cp output.conf /etc/logstash/conf.d
cp filter.conf /etc/logstash/conf.d
systemctl start logstash.service

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.0-amd64.deb
dpkg -i filebeat-7.11.0-amd64.deb
cp /vagrant/filebeat.yml /etc/filebeat/
systemctl start filebeat
systemctl enable filebeat


#        apt install xdg-utils -y
#        xdg-open http://127.0.0.1:80
#        xdg-open http://127.0.0.1:5601
#fi
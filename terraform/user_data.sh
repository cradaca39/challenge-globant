#!/bin/bash
sudo yum install -y docker
sudo systemctl start docker
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
sudo mkdir globant-project
sudo cd globant-project
sudo aws s3api get-object --bucket globant-challenge --key docker-compose-prod.yml docker-compose.yml
sudo aws s3api get-object --bucket globant-challenge --key initdb/schema.sql initdb/schema.sql
sudo docker-compose up -d
#sudo docker pull cradaca39/mysql-db:1.0.0
#sudo docker run -d -it cradaca39/mysql-db:1.0.0
#sudo docker pull cradaca39/globant-test:1.0.0
#sudo docker run -d -it -p 5000:5000 cradaca39/globant-test:1.0.0


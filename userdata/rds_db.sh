#!/bin/bash

# Setup Global
sudo yum -y group install "Development Tools"

# Setup App
sudo yum install -y python3 python3-devel git postgresql-devel
sudo git clone https://github.com/ahumenetskyy/aws_course.git /opt/aws_course && \
cd /opt/aws_course/app/ && \
sudo make setup && \
sudo make run POSTGRES_URL="10.214.128.3:5432" POSTGRES_PW="udD7tdGyKlnLuiaK" POSTGRES_DB="hw4"

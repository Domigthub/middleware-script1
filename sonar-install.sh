#!/bin/bash
#Description: install sonarqube
#Author: Dominique
#Date :June 22,2022
## Script that provides steps to install and configuring SonarQube on Centos7
echo "Installation of SonarQube on Centos7 server"
sleep 1
sudo yum update -y
sleep 1
sudo yum install java-11-openjdk-devel -y
sleep 1
sudo yum install java-11-openjdk -y
sleep 1
cd /opt
sleep 1
sudo yum install wget -y
sleep 1
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip   
sleep 1
sudo yum install unzip -y
sleep 1
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 1
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 1
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
sleep 1
./sonar.sh start
sleep 1
 echo "SonarQube successfully started and configured. You may now connect to the SonarQube server through the browser by following below steps: "
 sleep 1
 echo " http://<your-ip-address>:9000 "
 echo " Please note that SonarQube uses port 9000. "
 echo "If you are unable to locate your ip address, run below command..."
 sleep 3
 sudo ip a 
 echo " PS: Please note that some servers may have firewall enabled. If you are unable to connect to the SonarQube browser, be sure to run the below command to open port 9000.The # must be removed for the commands to run successfully."
  
  
 #sudo firewall-cmd --permanent --add-port=9000/tcp
 #sudo firewall-cmd --reload
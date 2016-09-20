#!/bin/sh

#Start at root
cd /
sudo mkdir selenium_testing
cd selenium_testing/

#get firefox, xvfb, zip unzip
sudo apt-get install firefox
sudo apt-get install -y firefox
sudo apt-get install -y zip unzip xvfb

#create hierharchy
sudo mkdir web_driver
sudo mkdir browser
cd browser

#get stable firefox 47.0.1
sudo wget http://ftp.mozilla.org/pub/firefox/releases/47.0.1/firefox-47.0.1.linux-x86_64.sdk.tar.bz2
sudo mkdir firefox47.0.1
sudo mv firefox-47.0.1.linux-x86_64.sdk.tar.bz2 firefox47.0.1/firefox-47.0.1.linux-x86_64.sdk.tar.bz2
cd firefox47.0.1/
sudo tar xvjf firefox-47.0.1.linux-x86_64.sdk.tar.bz2 
cd ..

#Get google chrome
sudo mkdir google
cd google
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
sudo apt-get -f -y install

#get java 8
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

#get selenium standalone server 2.53.1
cd /selenium_testing/
sudo mkdir selenium_server
cd selenium_server/
wget http://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar
mv selenium-server-standalone-2.53.1.jar selenium-server-standalone.jar 

#get chrome webdriver
cd /selenium_testing/web_driver/
mkdir google
cd google
wget http://chromedriver.storage.googleapis.com/2.23/chromedriver_linux64.zip
unzip chromedriver_linux64.zip 

#get process utility
apt-get install htop

#TODO, specify proper node config file

#cd /selenium_testing/selenium_server/
#nano default_node.json
#cd ..
#cd web_driver/
#cd google/
#nano /selenium_testing/selenium_server/default_node.json 
#cd /selenium_testing/
#cd selenium_server/
#sudo xvfb-run --auto-servernum java -jar selenium-server-standalone.jar -role hub &
#sudo xvfb-run --auto-servernum java -jar selenium-server-standalone.jar -role node -nodeConfig default_node.json -Dwebdriver.chrome.driver=/selenium_testing/web_driver/google/chromedriver &

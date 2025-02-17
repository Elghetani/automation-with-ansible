# steps for install and configure nexus 
apt update
apt install java-1.8.0-openjdk java-1.8.0-openjdk-devel
apt install net-tools

cd /opt
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -zxvf latest-unix.tar.gz

adduser nexus
chown -R nexus:nexus nexus-3.28.1-01
chown -R nexus:nexus sonatype-work

vim nexus-3.28.1-01/bin/nexus.rc
run_as_user="nexus"

su - nexus
/opt/nexus-3.28.1-01/bin/nexus start

ps aux | grep nexus
netstat -lnpt

#!/bin/bash

. /usr/local/osmosix/etc/.osmosix.sh
. /usr/local/osmosix/etc/userenv
. /usr/local/osmosix/service/utils/cfgutil.sh
. /usr/local/osmosix/service/utils/agent_util.sh


cd /tmp
agentSendLogMessage "Installing REMI Repo"
sudo wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo rpm -Uvh remi-release-6.rpm 
sudo yum install yum-utils -y
sudo yum-config-manager --enable remi-php56
agentSendLogMessage "Installing PHP 5.6"
sudo yum install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo -y
agentSendLogMessage "PHP 5.6 Installed"

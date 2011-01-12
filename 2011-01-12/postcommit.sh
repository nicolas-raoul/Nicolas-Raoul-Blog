#! /bin/sh
# 2011-01-12 Nicolas Raoul

echo "Deploying web content via FTP"

lftp -c 'open -e "mirror -Rvn /home/nicolas/programs/alfresco-deployment/target/ROOT /var/www" -u remoteuser,remotepassword remotehost'

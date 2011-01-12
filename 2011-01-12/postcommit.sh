#! /bin/sh
#
# Post-commit script to upload Alfresco WCM's web content to an FTP server.
# See http://nicolas-raoul.blogspot.com/2011/01/automatically-deploy-alfresco-wcm.html
#
# 2011-01-12 Nicolas Raoul
#

echo "Deploying web content via FTP"

# Calling LFTP, installed by default on most Linux distributions, and available for all UNIX platforms.
# -c open -e: open connection then execute command then exit.
# -Rvn: mirror upload mode, verbose, only transfer new files.
lftp -c 'open -e "mirror -Rvn /home/nicolas/programs/alfresco-deployment/target/ROOT /var/www" -u remoteuser,remotepassword remotehost'

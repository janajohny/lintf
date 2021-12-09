#!/bin/sh
echo -e "[ansiblevm]\n$(az vm show -d -g TF-RG -n tf-linuxvm --query privateIps -o tsv)" > /home/vmadmin/hosts
cat /home/vmadmin/hosts

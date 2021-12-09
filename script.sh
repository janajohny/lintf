#!/bin/sh
az login --tenant-id 4f008545-7eb1-44e9-b7f4-ea0f30b4e798
touch /home/linuxadmin/hosts
echo -e "[ansiblevm]\n$(az vm show -d -g TF-RG -n tf-linuxvm --query privateIps -o tsv)" > /home/linuxadmin/hosts
cat /home/linuxadmin/hosts

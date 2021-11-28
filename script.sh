#!/bin/sh
echo -e "[ansiblevm]\n$(az vm show -d -g linuxVMRg -n ansiblevm --query privateIps -o tsv)" > /home/vmadmin/hosts
cat /home/vmadmin/hosts

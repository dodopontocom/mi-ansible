#!/bin/bash

os=centos
ansible_test=ansible1
bkp_run=/tmp/mi-ansible/

mkdir ${bkp_run}

cp -r ${ansible_test} ${bkp_run}
cp ${os}/Dockerfile ${bkp_run}

cd ${bkp_run}

docker build -t ansible-${os} .

rm -vfr ${bkp_run}
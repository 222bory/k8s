#/usr/bin/env bash
export KOPS_STATE_STORE=s3://cluster.k8s.bory.xyz
export CLUSTER_NAME=222bory.xyz
export VPC_ID=vpc-0b78a8a9d34112c50

kops create cluster --name=$CLUSTER_NAME --zones=ap-northeast-2c --cloud=aws --dns-zone=222bory.xyz \
--master-size=t2.micro --node-size=t2.micro --node-count=2 --master-count=1 \
--vpc=$VPC_ID #--topology=private --networking=calico

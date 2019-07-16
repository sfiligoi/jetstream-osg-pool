#!/bin/bash

id=`date +%s`
# Remove leading 2 digits.. should be Ok for a few years
let id=$id-1500000000

num_nodes=9
node_name=osg-wn-$id

openstack server create --image osg-wn-ready-v3 --flavor m1.medium --key-name tacc-ce --network osg_net --security-group default --min ${num_nodes} --max ${num_nodes} ${node_name}

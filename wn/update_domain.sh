#!/bin/bash

#
# Let's add a nice domain name, so it looks nicer in condor_status 
#

myip=`ifconfig eth0 |awk '/inet /{print $2}'`
myname=`hostname |awk '{split($0,a,"."); print a[1]}'`
cp /etc/hosts /etc/hosts.org
grep -v "^${myip} " /etc/hosts.org | grep -v '^$' >/etc/hosts
echo "${myip} ${myname}.osg.tacc.jetstream-cloud.org ${myname}.novalocal" >> /etc/hosts
rm -f /etc/hosts.org

Installation instructions for the OSG CE Collector on Jetstream
===============================================================

Follow the instructions in
Buildfile

Used on the TACC instnce:
https://tacc.jetstream-cloud.org/

Deployed as a 
m1.small
instance.

Using the default security policy, and our own osg_net.


Pool password file
==================

The instance needs a pool_password file.
It is not part of the github repo for security reasons.
Also notice that this file has to be shared between all the nodes running condor.

If you want to create the pool_password directly in this instance, use
condor_store_cred -f <filename>


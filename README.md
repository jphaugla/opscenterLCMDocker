The purpose of this repository is to build an opscenter LCM environment.  
This includes one opscenter node and three base ubuntu nodes ready to 
be installed with datastax using LCM.  

This demo borrows (steals) heavily from the datastax docker home image located here:   
http://downloads.datastax.com/extra/docker_examples/latest/

If you want to set up a opscenter and datastax without the need for LCM, the docker_examples is the much better way to go instead of continuing here.

this 
http://downloads.datastax.com/extra/docker_examples/latest/

This has been changed to no longer use a binary tar file installation to instead use ubuntu apt-get

To run through the demo:

1.  put a valid username and password to access the software from the datastax repository into the "datastax.sources.list" file.  This username and password is the same as your login id for academy.datastax.com.  Don't use special characters or it may not work.

2.  run ./dockerOpsCentBuild.sh.  This will build an OpsCenter image

3.  run ./dockerBaseBuild.sh  This will build a base ubuntu image

4.  run ./onlyOps.sh  this will run an opscenter image.  

	4a.  Can enable ssl between opscenter and opcenter agents.  It is much easier to turn this on right away than wait for later as this is automatic if turned on before installing the cluster. Directions below:  
		https://docs.datastax.com/en/latest-opsc/opsc/configure/opscEnableSSLpkg.html

5.  run ./basenodes.sh
		
since localhost port 8888 is mapped to the opscenter node, bring up the opscenter interface with http://localhost:8888

Follow these direction to get started.  The scripts have defined a password for root to be used for the "Adding SSH Credentials" section

Alternatively, I have added a script "genkeys.sh" to generate .ssh directory for each of the nodes (hardcoded in script for 3 nodes).  This also copies the public key to "authorized_keys".  With this, copy the /root/.ssh/id_rsa contents and use this as the ssh credentials for the corresponding node

https://docs.datastax.com/en/latest-opsc/opsc/LCM/opscLCMgetStartedWorkflow.html
Can add SSL using opscenter LCM
https://docs.datastax.com/en/latest-opsc/opsc/LCM/opscLCMsecurityOverview.html



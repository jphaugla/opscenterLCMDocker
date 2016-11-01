The purpose of this repository is to build an opscenter LCM environment.  
This includes one opscenter node and three base ubuntu nodes ready to 
be installed with datastax using LCM.  

This demo borrows (steals) heavily from the datastax docker home image located here:   
http://downloads.datastax.com/extra/docker_examples/latest/

If you want to set up a opscenter and datastax without the need for LCM, the docker_examples is the much better way to go instead of continuing here.

this 
http://downloads.datastax.com/extra/docker_examples/latest/


To run through the demo:

1. Bring down the latest version of opscenter tar file from http://downloads.datastax.com/enterprise.  This command will work changing the file name to the latest version:
wget --user=$USER --password=$PASS http://downloads.datastax.com/enterprise/opscenter-6.0.0.tar.gz

the user and password are your login for academy.datastax.com

2.  rename this downloaded file to opscenter.tar.gz

3.  run ./dockerOpsCentBuild.sh.  This will build an OpsCenter image

4.  run ./dockerBaseBuild.sh  This will build a base ubuntu image

5.  run ./onlyOps.sh  this will run an opscenter image.  

6.  run "docker start opcenter603"

7.  run ./basenodes.sh

since localhost port 8888 is mapped to the opscenter node, bring up the opscenter interface with http://localhost:8888

Follow these direction to get started.  The scripts have defined a password for root to be used for the "Adding SSH Credentials" section

https://docs.datastax.com/en/latest-opsc/opsc/LCM/opscLCMgetStartedWorkflow.html

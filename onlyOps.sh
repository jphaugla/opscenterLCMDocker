  echo "Run node opscenter"
export OPSC_IMAGE=opscenter603.tar.gz
#  export OPSC_IMAGE=9633fa9000ec
  docker run -d --name opscenter603 -p 8888:8888 $OPSC_IMAGE
  export STOMP_INTERFACE=`docker exec opscenter603 hostname -I`

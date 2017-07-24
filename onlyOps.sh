echo "Run node opscenter"
export OPSC_IMAGE=opscenter
docker run -d --name opscenter -p 8888:8888 $OPSC_IMAGE
# docker exec opscenter service opscenterd restart
export STOMP_INTERFACE=`docker exec opscenter hostname -I`

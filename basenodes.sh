echo "Run base node "
export PASS=datastax
export OPSC_IMAGE=readydse
docker run -d --name node1 $OPSC_IMAGE
docker exec node1 service ssh restart
echo -e "$PASS\n$PASS" | docker exec -i node1 passwd
docker run -d --name node2 $OPSC_IMAGE
docker exec node2 service ssh restart
echo -e "$PASS\n$PASS" | docker exec -i node2 passwd
docker run -d --name node3 $OPSC_IMAGE
docker exec node3 service ssh restart
echo -e "$PASS\n$PASS" | docker exec -i node3 passwd

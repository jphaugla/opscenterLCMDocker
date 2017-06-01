echo "generate keys"
docker exec -i node1  ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
docker exec -i node1  cp -p /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
docker exec -i node1  chmod 600 /root/.ssh/authorized_keys
docker exec -i node2  ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
docker exec -i node2  cp -p /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
docker exec -i node2  chmod 600 /root/.ssh/authorized_keys
docker exec -i node3  ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
docker exec -i node3  cp -p /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
docker exec -i node3  chmod 600 /root/.ssh/authorized_keys

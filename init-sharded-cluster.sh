# init replication on shard a, shard b and config servers
docker exec mongo-sharded-cluster-docker_config-server_1 mongo --port 27019 /config-server-init/config-server-init.js
docker exec mongo-sharded-cluster-docker_shard-a_1 mongo --port 27018 /shard-a-init/shard-a-init.js
docker exec mongo-sharded-cluster-docker_shard-b_1 mongo --port 27018 /shard-b-init/shard-b-init.js
#wait until mongos refreshes its state after config server replica set initialization and starts accepting incoming connections
sleep 20
docker exec mongo-sharded-cluster-docker_mongos_1 mongo /router-init/router-init.js

#init sharding
docker exec mongo-sharded-cluster-docker_mongos_1 mongo /init-data/enable-sharding.js

#load sharded data
docker exec mongo-sharded-cluster-docker_mongos_1 mongoimport --db test --collection zips /init-data/zips.json

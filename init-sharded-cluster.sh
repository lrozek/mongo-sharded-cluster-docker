docker exec mongo-sharded-cluster-docker_shard-a_1 mongo --port 27018 /shard-a-init/shard-a-init.js
docker exec mongo-sharded-cluster-docker_shard-b_1 mongo --port 27018 /shard-b-init/shard-b-init.js
docker exec mongo-sharded-cluster-docker_config-server_1 mongo --port 27019 config-server-init/config-server-init.js

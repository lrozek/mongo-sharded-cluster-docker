docker exec mongo-sharded-cluster-docker_shard-a_1 mongo --port 27018 /shard-a-init/shard-a-init.js
docker exec mongo-sharded-cluster-docker_shard-b_1 mongo --port 27018 /shard-b-init/shard-b-init.js

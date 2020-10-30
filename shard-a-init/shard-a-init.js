config = {
    _id : "rs-shard-a",
    members: [
      { _id : 0, host : "mongo-sharded-cluster-docker_shard-a_1:27018" },
      { _id : 1, host : "mongo-sharded-cluster-docker_shard-a_2:27018" },
      { _id : 2, host : "mongo-sharded-cluster-docker_shard-a_3:27018" }
    ]
  } 

var result = rs.initiate(config)
printjson(result)

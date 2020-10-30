config = {
    _id : "rs-conf",
    members: [
      { _id : 0, host : "mongo-sharded-cluster-docker_config-server_1:27019" },
      { _id : 1, host : "mongo-sharded-cluster-docker_config-server_2:27019" },
      { _id : 2, host : "mongo-sharded-cluster-docker_config-server_3:27019" }
    ]
  } 

var result = rs.initiate(config)
printjson(result)

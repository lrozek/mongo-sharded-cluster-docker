function initializeShard(shardLetter) {
	url = "rs-shard-" + shardLetter + "/mongo-sharded-cluster-docker_shard-" + shardLetter + "_1:27018"
	print("shard url: " + url)
	result = sh.addShard(url)
	printjson(result)
}

initializeShard("a");
initializeShard("b");

sh.enableSharding("test")
sh.shardCollection("test.zips", { _id : "hashed" } )


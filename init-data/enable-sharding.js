sh.enableSharding("test")
sh.shardCollection("test.zips", { city : 1 } )


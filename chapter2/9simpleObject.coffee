# 就像CoffeeScript对数组的支持一样,在每一行还有一个属性和值的情况下,可以不使用分号
authorsBicycle = {
	color: 'black'
	fenders: true
	gears: 24
}

# 还可以省略大括号
authorsBicycle1 = 
	color: 'black'
	brand: 
		make: "Surly"
		model: "Cross Check"
	fenders: true
	gears: 25

#遍历对象

for key, value of authorsBicycle
	console.log "Key: " + key + " Value: " + value
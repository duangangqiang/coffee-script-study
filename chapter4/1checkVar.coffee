# coffeeScript提供了一个 ? 符号作为检查值是否存在
if yeti?
	console.log "i want to believe"

# 即使是其他等价假值,存在运算也能返回true
animalStatus = (animal) ->
	ceratures = {ocelot: true, dodo: false}
	if ceratures[animal]?
		if ceratures[animal]?
			console.log "The #{animal} is alive and well"
		else
			console.log "Oh no! The #{animal} is extinct!"
	else
		console.log "The #{animal} isn't real."
	
# 判断多个变量是否存在时,也可以处理得很好
if hat? and mittens? and boots?
	console.log "Ok"

# 空值在链式调用中使用
tree =
	pine:
		type: "evergreen"
	crabapple:
		type: "deciduous"
		fruit:
			edible: false

if tree.pine.fruit?.edible
	console.log "Mmmm...truffula fruit"

# 也可以在使用数组和对象的访问值使用?和中括号[]
alpha = 
	lowercase: ['a', 'b', 'c', 'd']

console.log alpha.lowercase?[2].toUpperCase()

# 还可以在函数调用组合使用
oppositeMath = 
	min: Math.max

console.log oppositeMath.min?(3, 2, 5)
console.log oppositeMath.max?(3, 2, 4)

# 以空值为条件,赋新值
briefcase = 
	color: "silver"

briefcase.conbination ?= "1234"
briefcase.color ?= "black"
console.log briefcase

# 使用?=不能使用未声明的变量,否则会拒绝编译
# aa ?= "aa"

# javaScript中的 ||= 可以使用or=替换
wasabducted = "aa"
ufosExist =　"aaa"
ufosExist ||= wasabducted
ufosExist or= wasabducted
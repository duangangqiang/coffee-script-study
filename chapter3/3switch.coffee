# CoffeeScript使用switch,when,else作为语句的关键字,break自动插入到控制结构中
switch iSpy
	when "sky"
		console.log "blue"
	when "grass"
		console.log "green"
	else
		console.log "gray"

# 还可以使用then讲语句块缩短至一行
switch iSpy
	when "sky" then console.log "blue"
	when "grass" then console.log "green"
	else console.log "gray"

# 对于多个值使用同一个条件的时候可以在when之后以,分割
switch iSpy
	when "sky", "lake"
		console.log "blue"
	when "grass", "frog", "stoplight"
		console.log "green"
	else
		console.log "gray"

# coffeeScript的Switch语句可以直接作为返回值
result = switch iSpy
	when "sky", "lake"
		console.log "blue"
	when "grass", "frog", "stoplight"
		console.log "green"
	else
		console.log "gray"
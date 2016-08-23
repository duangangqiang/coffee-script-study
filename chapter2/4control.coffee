#if
if(true == true)
	console.log "remous"

#CoffeeScript这种在所有的控制结构的代码中都不使用大括号
#被缩进到if语句里面的代码说明是if分支语句
if true == true
	console.log 'hehe'

#不能写空if
if true == true
	console.log 1

console.log '没有缩进'


#如果是嵌套的语句,只要根据需要嵌套的缩进级别,
number = 6
console.log "Let's test our number"
if number > 5
	console.log "Our number is greater than 5"
	if number > 10
		console.log "Our number is greater than 10"
	console.log "Now we're done testing"

# else 和 else if
number = -8
if number > 0
	"Positive"
else if number < 0
	"Negative"
else
	"Zero"		

# unless 语句当测试条件为等价假时执行分支语句块
day = "Monday"
unless day[0] =="S"
	console.log "This is a weekday."

#unless 与 else 和 else if
day = "Monday"
unless day[0] == "S"
	console.log "This is a weekday"
else
	console.log "It's the weekend"

#单行形式
console.log "Truth achieved" if true == true

console.log "Universe Error" unless true == true


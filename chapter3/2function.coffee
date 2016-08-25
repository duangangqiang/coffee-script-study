# 声明一个匿名函数, javaScript的function关键字被->取代, 且使用了带语义的空格符
# 在第一个没有比当前声明函数更胜的非空白处结束
(name) ->
	return "Hello, #{name}!"

# 函数的调用
sayHello = (name) ->
	return "Hello, #{name}!"
sayHello "Ian"

#可以有多个参数
sayHelloFormally = (honirific, name) ->
	return "Good day to you, #{honirific}, #{name}"

#函数也可以没有参数,可以省略小括号
sayGoodbye = ->
	return "Bye now!"

# 如果函数没有显示的给出返回值,那么函数将以运行时执行的最后一条语句的结果作为函数返回值
shout = (phrase) ->
	"#{phrase.toUpperCase()}!!!"

#普通的情况
letMeGoogolThatForYou = (number) ->
	googol = Math.pow 10, 100
	number * googol

# 含有控制结构语句的函数
opinion = (numberOfState) ->
	if numberOfState >= 4
		"Happy"
	else if numberOfState <= 2
		"Sad"
	else
		"Neural"

# 包含循环的函数同样具有隐式返回
squareAll = (numbers) ->
	for n in numbers
		n * n

# 通常在遇到制定的条件成立或者不成立的时候使用return语句提前退出函数执行
middleElement = (list) ->
	return if list.length is 0
	list[Math.floor list.length / 2]

# 或者使用return来终止并跳出循环
firstSubstring = (stringToMatch, snippets) ->
	for substr in snippets
		return substr unless stringToMatch.indexOf(substr) is -1
	"No match : ("

# 如果函数确定不会返回值, 那么在函数末尾添加一个没有返回值的return 语句,或者写Null
sideEffectOnly = (myArray) ->
	myArray.pop()
	return

sideEffectOnly2 = (myArray) ->
	myArray.pop()
	null
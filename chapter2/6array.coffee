# 数组的简单形式看起来和javaScript类似
languages = ["english", "spanish", "french"]
console.log languages[1]

# CoffeeScript可以在数组项单独占一行的时候不用逗号
languages = [
	"english"
	"spanish"
	"french"
]

#数列 声明数组需要简单地使用某个范围内的值来初始化所有元素
singleDigits = [0..9]

#还可以使用倒序
countdown = [10..1]

#两个点代表值域包含边界,三个点代表不包含尾边界
[1..5] == [1, 2, 3, 4, 5]
[1...5] == [1, 2, 3, 4]

#除了数字,还可以使用变量来创建
start = 2
end = 9
bigNumber = [start..end]
#其实也可以加()
console.log("hello world!")

#当前也可以不加
console.log "hello"

#Date.now()必须要有小括号,在没有参数存在的时候要确定究竟是要访问函数还是要调用函数
DateNowFn = Date.now
DateNowResult = Date.now()

#小括号是可选的，除非有必要用来避免歧义
Math.max(2, 3, Math.min(4, 5, 6))
Math.max 2, 3, Math.min(4, 5, 6)
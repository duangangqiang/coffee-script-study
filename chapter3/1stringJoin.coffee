# CoffeeScript解决 1 + 2 + '3' 和 '3' + 2 + 1的值返回值不同的问题使用了#{}
verb = "build"
operators = "bracket enclosures"
console.log "You #{verb} string using #{operators}"

# #{}中可以包含任何代码, 代码会被执行, 执行的结果被插入到字符串中
console.log "#{1 + 1}'s company, #{1 + 2} is a crowd"

console.log "A googol is a large number: #{Math.pow 10, 100}"

#还可以使用双引号
console.log "No problems #{"here".toUpperCase()}!"
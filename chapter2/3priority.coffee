#CoffeeScript调用函数的优先级原则： 参数由内向外分配给函数，换一种说法就是参数所属的函数遵循最近原则
#所以这三个都是一样的
Math.max(2, 3, Math.min(4, 5, 6))
Math.max 2, 3, Math.min(4, 5, 6)
Math.max 2, 3, Math.min 4, 5, 6

#如果想要不按照CoffeeScript的优先级来做，那么小括号就是必须的
#也可以避免阅读歧义
threeSquared = Math.pow 3, Math.floor Math.min 4, Math.sqrt 5
threeSquared = Math.pow 3, Math.floor(Math.min(4, Math.sqrt(5)))
# CoffeeScript中的 == 和 != 不会被编译成javascript相对应的符号
1 == 2
3 != 4

# 其他的也能如所预料的工作
if 1 < 2 && 3 >= 2
	if false || true
		if !false
			console.log "All is well."

# CoffeeScript提供了两个别名方法来增强可读性 is 和isnt
status = 'normal'
reactor = 'primed'
console.log 'All clear' if status is 'normal'
console.log 'Abort mission' if reactor isnt 'primed'

# 还可以使用 and, or, not组合判断条件
location = "Washington"
hairy = false
blurryPhoto = true
manInApeSuit = false

isBigfoot = location is "Washington" and (hairy or blurryPhoto) \
	and not manInApeSuit

# true和false也有别名, true写成yes或on, false写成no或off
power = true
mute = false

if power is on
	playingMusic = yes if mute is off
else 
	playingMusic = no
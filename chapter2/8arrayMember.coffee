# 遍历数组会使用到 in,但是in还有另外一个功能,就是判断元素是否存在于当前数组中
number = 3
if number in [1, 2, 3, 4, 5]
	console.log number + "is in array"

#如果数组是动态的,in还可以使用在这种情况下
plants = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
console.log "Hooray!" if "Pluto" in plants
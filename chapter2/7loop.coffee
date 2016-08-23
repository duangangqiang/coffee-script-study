#循环能够得到所有浏览器的支持,还不依赖外部库
animals = ["dog", "cat", "bird"]
for animal in animals
	console.log animal

#单行循环
console.log animal for animal in animals

# coffeeScript有类似Array.prototype.map的功能
pluralAnimals = for animal in animals
	animal + 's'

#赋值操作优先级高于循环的
pluralAnimals = (animal + 's' for animal in animals)

#使用when的条件语句过滤循环的执行
words = ["dogma", "catasrophe", "doggerel", "hangdog"]
for word in words when word.indexOf("dog") isnt -1
	console.log word

evenNumbers = (n + 'is even' for n in [1..100] when n % 2 is 0)

#访问数组的下标
solarSystem = [
	"Mercury"
	"Venus"
	"Mars"
	"Jupiter"
	"Saturn"
	"Uranus"
	"Neptune"
	"Pluto"
]

for planet, plantIndex in solarSystem when planet isnt "Pluto"
	console.log "Planet #" + (plantIndex + 1) + " is " + plant

#每几个访问一次 使用by关键字
evenNumbers = (n for n in [2..100] by 2)


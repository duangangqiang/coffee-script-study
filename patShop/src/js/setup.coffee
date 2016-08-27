# 宠物店对象
shop = {
	owner: {name: "Ian"},
	animals: [
		{name: "Kelsey", type: "dog", breed: "Kelsey", description: "this is Kelsey"}
		{name: "Sgt. Snuffles", type: "dog", breed: "Sgt. Snuffles", description: "this is Sgt. Snuffles"}
		{name: "Chomps", type: "rabbit", breed: "Chomps", description: "this is Chomps"}
		{name: "Flops", type: "rabbit", breed: "Flops", description: "this is Flops"}
		{name: "Bopper", type: "rabbit", breed: "Bopper", description: "this is Bopper"}
		{name: "Chairman Meow", type: "cat", breed: "Chairman Meow", description: "this is Chairman Meow"}
		{name: "Jacques", type: "cat", breed: "Jacques", description: "this is Jacques"}
		{name: "Chupa", type: "cat", breed: "Chupa", description: "this is Chupa"}
		{name: "Alfred", type: "horse", breed: "Alfred", description: "this is Alfred"}
	]
}

# 基本信息
nameElement = document.getElementById("owner_name")
nameElement.innerHTML = shop.owner.name
document.title = "#{shop.owner.name}'s Pet Shop"

# 获取动物对象,返回动物发出的声音
animalSound = (animal) ->
	switch animal.type
		when "cat" then "meow"
		when "dog" then "bark"
		when "horse" then "donkey"
		else "sniff sniff"

# 格式化动物声音
formatPetName = (pet) ->
	"#{pet.name} <span class='sound'>#{animalSound pet}!</span>"

# 创建宠物列表
petOutput = for pet, i in shop.animals
	"<li><a href='#' onclick='selectPet(#{i}, this)'>#{formatPetName pet}</a></li>"
availablePets = document.getElementById("available_pets")
availablePets.innerHTML = petOutput.join " "

# 格式化
formatPetDescription = (pet) ->
	"<h2>#{pet.name}</h2>" + 
		"<h3 class='breed'>#{pet.breed}</h3>" + 
		"<p class='description'>#{pet.description}</p>"

# 宠物选中事件
window.selectPet = (petIndex, element) ->
	pet = shop.animals[petIndex]
	petInfo = document.getElementById "pet_information"
	petInfo.innerHTML = formatPetDescription pet
	for link in document.querySelectorAll("#available_pets a")
		link.className = ""
	element.className = "selected"
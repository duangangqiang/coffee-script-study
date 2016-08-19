shop = {
	owner: {name: "Ian"}
}

nameElement = document.getElementById("owner-name")
nameElement.innerHTML = shop.owner.name
document.title = shop.owner.name + "'s Pet Shop"
import Foundation


//variáveis computadas e maneira reduzida de escrever getter

var people = 4

//2 regras para isto for possível
//precisa ser var e possuir implícito o tipo da propriedade
var numberPizza: Int  {
	return people * 2
}

print(numberPizza)


var costPizza: Int {
	get {
		return numberPizza * 20
	}
}

print(costPizza)

//com setter consigo alterar minhas variaveis computadas

var pizza = 0
var  newNumberPizza: Int {
	get {
		return pizza
	}
	set {
		 pizza = newValue + 20
	}
}

newNumberPizza = 20

//vai printar 40
//20 do valor setado mais 20 da logica do setter
print(newNumberPizza)








import Foundation

//observed properties
//são propriedades que permitem monitorar a variável

//willSet permite acessarmos os novos valores que a variável vai assumir
//didSet permite acessarmos os valores antigos que a variavel havia
var pizzaInChes: Int = 10 {
	didSet {
		print(oldValue, "oldValue")
	}
	willSet {
		print(newValue, "newValue")
	}
}

pizzaInChes = 12

//com observe podemos realizar logicas bacanas
//como inibir a variavel assumir um valor nao desejado

var custPizza: Int = 12 {
	didSet {
		if custPizza >= 120 {
			print("Cant buy pizza more than 120")
			custPizza = 12
			}
		}
}

custPizza = 121
print(custPizza)
//ira printar Cant buy pizza more than 120
//12, inibindo eu aumentar mais que 120







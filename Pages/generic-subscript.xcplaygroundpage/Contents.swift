import Foundation

//subscript e a posibilidade de criar novos metodos
class Car  {
	var plaque: String

	subscript(index: Int) -> String {
		get {
				//estou transformando em um array, quisese separar por uma condicao
				//poderia usar plaque.components(separatedBy: <#T##T#>)
				
				//vou receber cada caracter em um array
				//apos usar o metodo array preciso converter para string
				var caracter = Array(plaque)
				return String(caracter[index])
			}
			//alem de retornar consigo manipular com set
			set {
				var array = Array(plaque)
				array[index] = Character(newValue)
				plaque = String(array)
			}
	}
	
	init(_ plaque: String) {
		self.plaque = plaque
	}
	
	
}

let car = Car("123232")
//vou criar um metodo para pegar car[3]

//e trocar pela letra A,repare que o metodo acima e Character,entao nao permite
//mais que um caracter
car[3] = "A"
print(car.plaque)


//generics

//inout e para posibilitar eu alterar os valores dos parametros recebidos
//por padrao os pametros recebidos em uma funcao sao let entao nao consigo alterar

//generico e a possibilidade de mudar o tipo do parametro
//dessa maneira e aceita qualquer tipo para a e b
func swapValue<T>(_ a: inout T,_ b: inout T)  {
	var temp = a
	a = b
	b = temp
}

var a = 10
var b = 20

//os argumetnos precisam da letra reservada &
swapValue(&a,&b)

print("a agora moudou para",a)
//a agora moudou para 20

print("b agora mudou para", b)
//b agora mudou para 10




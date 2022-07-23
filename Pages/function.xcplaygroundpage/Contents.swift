import Foundation

//com essa abordagem ele literamente espera um array
func transformUpercase (_ names: [String]) -> [String] {
	return names.map({$0.uppercased()})
}


let names = transformUpercase(["Ricardo","Joao","Pedro"])
print(names)


//com essa abordagem esperara um range
func transformUpercase (_ names: String...) -> [String] {
	return names.map({$0.uppercased()})
}

let names2 = transformUpercase("Ricardo","Pedro","Joao","Rafael")
print(names2)

//para retornar mais que um parametro da func
func returnMoreOne (name: String,old: Int) -> (name:String,old: Int) {
	return (name,old)
}

let people = returnMoreOne(name: "Ricardo",old: 23)
print(people.name)
print(people.old)

//as funcoes em swift sao First Class Citizen
//aceita retornar outras funcoes,passar como argumentos ...
func sum (valueOne: Int, valueTwo: Int) -> Int {
	 return valueOne + valueTwo
}

func multi (valueOne: Int, valueTwo: Int) -> Int {
	 return valueOne * valueTwo
}

func div (valueOne: Int, valueTwo: Int) -> Int {
	 return valueOne / valueTwo
}

typealias Op = (Int,Int) -> Int

func result(valueOne: Int,valueTwo: Int,op: Op) -> Int {
	return op(valueOne,valueTwo)
}

let resultDivide = result(valueOne:20,valueTwo:10,op:div)
//2
print(resultDivide)


//aqui atribuo uma funcao no retorno de outra
func getOperation(_ operation:String) -> Op {
	switch operation {
	case "multiplicacao":
		return multi
	case "divisao":
		return div
	default:
		return sum
	}
}

//estou atribuindo uma funcao para uma constante
var whatOperationDefault = getOperation("dfd")
var value = whatOperationDefault(4,2)
//6
print(value)

let whatOperationDiv = getOperation("divisao")
value = whatOperationDiv(4,2)
//2
print(value)


let whatOperationMulti = getOperation("multiplicacao")
value = whatOperationMulti(4,2)
//8
print(value)

//===============

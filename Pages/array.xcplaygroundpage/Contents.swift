//: [Previous](@previous)

import Foundation

//maneira de iniciar um array vazio
let arrayWithoutEmpty: [Int] = []

//maneira de iniciar um array sem valor
let arrayWithoutValue: [Int]?

var arrayNames = ["Ana","Pedro"]

//===========================
//para inserir valores

//sera inserido no final 3 novos nomes
arrayNames += ["Pedro","Joao","Carlos"]
print(arrayNames)
//["Ana", "Pedro", "Pedro", "Joao", "Carlos"]

//inserir no final
arrayNames.append("Carlos")

//inserir e remover elementos existes
//estou removendo do 2 ate o 4
arrayNames[2...4] = ["Rafael","Matheus","Erika"]
print(arrayNames)
//["Ana", "Pedro", "Rafael", "Matheus", "Erka", "Carlos"]

//inserir em um determinado lugar
arrayNames.insert("Novo elemento", at: 3)
print(arrayNames)
//["Ana", "Pedro", "Rafael", "Novo elemento", "Matheus", "Erika", "Carlos"]

//===========================


//======================
//verificar se o array esta vazio e quantos elementos
print(arrayNames.count)

//returna true ou false
print(arrayNames.isEmpty)
//======================

//======================
//deletar elementos
arrayNames.removeFirst()
arrayNames.removeLast()
arrayNames.removeAll()
//====================

//verficar se elmento contem
if arrayNames.contains("Rafael") {
	print("contem rafael")
}

//================
// verificar o ultimo elmento e o primerio
//ele retorna um optionl

if let first = arrayNames.first {
	print(first)
}

if let last = arrayNames.last {
	print(last)
}
//================






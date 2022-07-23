//: [Previous](@previous)

import Foundation

//set nao aceita variaveis com valores iguais
//precisa inferir o tipo dela,xcode nao consegue infererir sozinho
//set nao conseguimos acessar por indices apenas inteiradores
var movies: Set<String> = [
  "De volta para casa",
	"Matriz",
	"Jurasic Park"
]

//iniciar vazio
var movies2 = Set<String>()

//inserir valores
movies.insert("Pedro o joao")
print(movies)

//metodo insert retorna uma tupla,primeira propriedade e bolleano
//segundo e valor que foi inserido
let result = movies.insert("Pedro o joao")
//false Pedro o Joao
print(result.inserted,result.memberAfterInsert)
print(movies.count)

let moviesWife = [
	"Sabio de tudo",
	"Matriz",
	"Jurasic Park",
	"De repente"
]

//trago oque sao iguais nos dois set
let favoriteMoveis = movies.intersection(moviesWife)
//["Matriz", "Jurasic Park"]
print(favoriteMoveis)

//junto todos setes
let allMovies = movies.union(moviesWife)
//["De repente", "Matriz", "Pedro o joao","Sabio de tudo", "Jurasic Park", "De volta para casa"]
print(allMovies)

//retiro de movies oque tem em comun nos dois set
movies = movies.subtracting(moviesWife)
//["De volta para casa", "Pedro o joao"]
print(movies)


//tupla
//eu posso nomear os tipos das tuplas
let address: (road:String,number: Int,district:String,zipCode: Int) = ("Silviano Brandao",1234,"Centro",23344)

print(address.number)

//posso atribuir variaveis
let (road,_ ,district,code) = address
print(road)

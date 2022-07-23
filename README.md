# Concepts Swift
Repo destinado a conceitos em swift

## Feature
- Aprendi o uso de struct,class e protocols
- Apple recomenda o uso fortemente de struct para seus dados, só uso de classes quando não for possível implementar struct ou precisar de algum recurso especifico de classes
- Classes permitem herança, polimorfismo,sobre carga de métodos
- Struct não permite nenhum dessas fature citado,struct pode iniciar uma propriedade vazia classes não


```swift
//swift pode iniciar uma struct com propriedades opcionais 
// classes nao pode
// struct
struct User {
    let name: String
    let email: String?
    let followers: Int
    var isActive: Bool
    func logStatus() {
        if isActive {
            print(
                "\nDiagnostic code \n\(name) is working hard\nContacting \(name) on \(String(describing: email))\n\(name) has \(followers) followers"
            )
        }else{
           print( "\nDiagnostic code \n\(name) has left earth\nContacting \(name) on \(String(describing: email))\n\(name) has \(followers) followers")

        }
    }
    init(name: String, email: String?, followers:Int, isActive:Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
}

```

- Em struct também existem observadores de variáveis, elas são uteis para inibirmos que nossas variáveis assumem um valor não desejado, no exemplo abaixo travamos o mínimo e o máximo desejado dessa variável.
-  Exite também a possibilidade de variáveis computadas e  instanciar um método, sem instanciar o objeto.
- Dentro das variáveis computadas tenho a possibilidade da palavra reservada get e setter
- Get eu retorno um valor e set eu manipulo um valor, este novo valor ficara armazenado na palavra reservada newValue
- Em classes os métodos estáticos usaram a palavra reservada class em struct static

```swift
struct City {
	var district: String
	static	var speed: Int = 0 {
		didSet {
			//aqui tenho o mino e o maximo
			//isto e um observador de variavel, se ultrapassar o maximo
			//variavel mantem o maximo
			speed = min(speed, 250)
		}
	}
	
	var  newDistrict: String {
		//getter e setter vai ser para manipular algo internto
		get {
			return "Com set meu novo bairro e \(district)"
		}
		//newValue e uma palavra reservada
		set {
			district = 	newValue
		}
	}
	
	static func alert() {
		print("Minha cidade nao e permitida drogas")
	}
	
}

var district = City(district: "Alameida")
//vai trazer Alameida
print(district.district)

//aqui  estou usando set,entao "Com set meu novo bairro e Perereia"
district.newDistrict = "Perereia"
print(district.district)

City.alert()

City.speed = 500
print(City.speed)
```


##
- Para realizar herança colocamos ao lado do nome da classe a super classe
- Essa clase herda tudos métodos e propriedades  da super classe
- Para sobrescrever um valor de método da super classe usamos o nome override
- Caso desejamos o método que possui na super classe usamos a palavra reservada super


```swift
class Bird {
    
    //em classe preciso de inicializador diferente de struct
    //struct posso fazer
    //var female? string
    var female = false
    
    func LayEgg() {
        female ? print("Can lay egg") : print("Can't lay egg")
    }
    
    func sing() {
        print("Bird can sing")
    }
}

class Penquin: Bird {
    
    //estou sobscrevendo um metodo de uma super classe
    override func LayEgg() {
        //com a palavra super consigo pegar o metodo da super classe
        super.sing()
        print("All Penquim can put egg")
    }
    
    func swim () {
        print("Penguin can swim")
    }
}

```

## 
- Protocolos , sao parecidos com interfaces caso inferir um protocol preciso implementar seus metodos ou propriedades
- Protocols podem ser usados em struct e classes
- Repare que o protocolo esta ao lado da classe que herda a super classe
- Caso o protocolo fosse usado no Bird nao precisaria estar em Penguim pois se tornaria redudante porque por heranca ela receberia esse metodo


```swift
import Foundation

protocol  BirdProtocol {
   func  fly()
}

class Bird {
    var female = false
    
    func LayEgg() {
        female ? print("Can lay egg") : print("Can't lay egg")
    }
    
    func sing() {
        print("Bird can sing")
    }
}

//primeiro nome da super classe depois protocolo
class Penquin: Bird, BirdProtocol {
    
    func fly() {
        print("All penquim femaly can fly")
    }
    
    override func LayEgg() {
        super.sing()
        print("All Penquim can put egg")
    }
    
    func swim () {
        print("Penguin can swim")
    }
}
struct Hen: BirdProtocol {
    func fly() {
        print("All hen is femaly can fly")
    }
}





```
##
- Aprendi o uso de closure no swift
- Swift consigo receber os argumentos nos closure por $ idêntico e feito em bash,C
- Caso deseja saber como e feito com shell usando [bash](https://github.com/kenjimaeda54/shell_script)
- Abaixo estou mostrando maneira de escrever closure bem reduzida é a forma comum
- Você só consegue acessar os valores por $ se omitir o escopo de argumentos (argumentos)


```swift
//closure na forma padrao e escrito dessa maneira
//}
{(parametres) -> return type in
  statements
}




func result (n1:Int,n2:Int,operation:(Int,Int)->Int) -> Int {
    return operation(n1,n2)
}

func add(n1:Int,n2:Int)->Int {
    return n1 + n2
}
//vai aparecer no print 5
print(result(n1:2,n2:3,operation: add))

//vai printar 6
let total = result(n1:2,n2:3){$0 * $1}
print(total)

//vai printar 10
//se otimitir os argumetnos consigo acessar por $
let novo  = {print($0)}
novo(10)



```
##
- Extension são funcionalidades que permitem nos estendermos funcionalidades de algo que esta pronto como: classe, protocolos, objetos, dados primitivos,
- Abaixo um exemplo de uso [extensions](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html)

```swift

protocol Travel {
    func allPay()
}

extension Travel {
    func isOk() {
      print("Permission for travel is sucess")
    }
}

class UserTravel: Travel {
    func allPay() {
        print("Need all is pay for travel")
    }
    
}

var userTravel = UserTravel()
userTravel.allPay()
userTravel.isOk()


```

##
- Aprendi iniciar um array vazio e sem valor
- Variáveis sem valores são considerados nill
- Para iniciar uma variável sem valor usamos optional
- Aprendi maneiras interessantes adicionar valores, deletar, inserir e consultar nos arrays



```swift
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

//inserir e remover elementos existentes
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

//retorna true ou false
print(arrayNames.isEmpty)
//======================

//======================
//deletar elementos
arrayNames.removeFirst()
arrayNames.removeLast()
arrayNames.removeAll()
//====================

//verificar se elemento contem
if arrayNames.contains("Rafael") {
	print("contem rafael")
}

//================
// verificar o último elemento e o primeiro
//ele retorna um optional

if let first = arrayNames.first {
	print(first)
}

if let last = arrayNames.last {
	print(last)
}
//================


```
##
- Aprendi o uso de dicionários
- Aprendi maneiras interessantes adicionar valores, deletar, inserir e consultar nos dicionários


```swift
import Foundation

var states = ["SP":"Sao Paulo","BH":"Bahia","MG":"Minas Gerais"]

//para iniciar um dicionario vazio
var studentsGredde: [String:Double] = [:]


//para inserior um valor no dicionario
states["PB"] = "Pernambuco"

//===================
//para alterar um valor posso ussar de duas maneiras

states["MG"] = "Minas"

print(states)

//posso tambem alterar um valor e retonar o antigo
let old = states.updateValue("Minas Gerais", forKey: "MG")
print(old)
//Optional("Minas")

//===================

//para remover um valor do dicionario
states["MG"] = nil
print(states)
//["PB": "Pernambuco", "BH": "Bahia", "SP": "Sao Paulo"]



//existe a opcao count e isEmpty
print(states.count)
print(states.isEmpty)


//===========
// e por fim consigo retornar todos os valores do dicionario e tambem suas chaves

//preciso converter para array
let values = Array(states.values)
print(values)
//["Pernambuco", "Bahia", "Sao Paulo"]

let keys = Array(states.keys)
print(keys)
//["PB", "BH", "SP"]

//===========

```
##
- Aprendi o uso de tuplas e set
- Não consigo acessar set por índices preciso inteirar sobre eles
- Set não permite valores iguais e precisamos inferir o seu tipo, porque xcode não consegue fazer de forma automática
- Aprendi unir, subtrair e fazer interseção com tuplas
- Set e algo bacana, com ele conseguimos atribuir variáveis aos seus tipos e acessar com elas
- Consigo com método insert, receber uma tupla, um das propriedades dessa tupla e se o valor foi realmente inserido ou não

```swift
import Foundation


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

//oque e comum em ambos
let favoriteMoveis = movies.intersection(moviesWife)
//["Matriz", "Jurasic Park"]
print(favoriteMoveis)

//unindo todos set
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

```
##
- Aprendi o uso de Enum
- Com enum além de possibilitar, diminuir meu legue de possibilidades, também consigo acessar raw values e associated values
- Abaixo exemplos legais com esse uso



```swift
import Foundation
import CoreFoundation
//boa pratica maisculo
enum Compass  {
	case south,north,left,rigth
}

let direction:Compass  = .south
print(direction)


//Raw value
enum Milk: String {
	case hot = "quente", cold = "frio"
}

print(Milk.hot.rawValue)

//Valores Associados (Associated Values)

enum People {
	case age(Int), size(large:Double,height:Double)
}

let ricardo: People = .age(26)

let ricardo:People = .size(large:56.3,height:1.67)

switch ricardo {
case .age(let old):
	 print("Ricardo have \(old)")
	//Ricardo have 26
case  .size(let size):
	print("Ricardo have \(size.large)kg and \(size.height)m")
	//Ricardo have 56.3kg and 1.67m
}


```
##
- Aprendi uso interessantes  em funções
- Funções em swift são First Class Citizen
- Isto permite recursos interessantes, abaixo criei uma função que recebe outra como parâmetro
- Em conjunto usei typealias, possibilidade de criar apelidos, podem ser usados até em tipos primitivos

```swift
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



```

- Aqui estou atribuindo uma função a uma constante, isto permite reduzir bastante código


```swift
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

```


- Também aprendi a passagem de vários argumentos a uma função usando range


```swift
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

```
##
- Aprendi tratamentos de erros
- Aprendi como capturar erros e ignorar caso eu desejo
- Podemos capturar um erro especifico e tratar, como também ser generalista


```swift
import Foundation


enum LoginError: Error {
	case wrongPassword,wrongName,wrongInternet
	
}

func login(name:String,password:Int) throws -> Bool {
	if checkInternet() {
		if name !=  "Ricardo"{
			throw LoginError.wrongName
		}
		if  password != 1234 {
			throw LoginError.wrongPassword
		}
		return true
	}else {
	 throw	LoginError.wrongInternet
	}
	
}


func checkInternet() -> Bool {
	return false
}

//caso generalista
do{
	let userAuthenticated = try login(name:"Ricardo",password: 1234)
	print(userAuthenticated)
	 
}catch {
	print(error)
}


do{
	let userAuthenticated = try login(name:"Ricardo",password: 1234)
	print(userAuthenticated)
}catch LoginError.wrongName {
	print("Nome do usuario errado")
} catch LoginError.wrongPassword {
	print("Senha errado")
} catch LoginError.wrongInternet {
	print("Conexao ruim")
}

//dessa maneira posso ignorar o catch,ira retornar nill caso gere erro
let userAuthenticated = try? login(name:"Joao",password: 123)
print(userAuthenticated)

```
##
- Aprendi o uso dos meus próprios operadores customizados
- Esse recurso possibilita criarmos nossos operadores Unários(operam somente em um operando), Binários(operam em 2 operando)
- No caso dos Unários permitem usarmos prefix e postfix
- Para usar emoji precisa ser na aba símbolos
- Neste caso as funções não aceitam ranges, apenas um parâmetro ou seja String...  não e permitido


```swift

import Foundation
//existem operadores

//Unarios -> Operam somente em 1 operando
//prefix -> esquerdo
//postfix -> direito


//Binarios -> Operam em 2 operando
//infix

//criando um prefix
prefix operator ✅
prefix func ✅(_ names: [String]) -> [String] {
	return names.map({$0.uppercased()})
}

let names = ✅(["Ricardo","Maeda","Joao"])
print(names)

postfix operator ❤️
postfix func  ❤️ (_ olds:[Int]) -> [Int] {
	return olds.map({$0 * 2})
}

let olds  = [2,3,4,5]❤️
print(olds)

infix operator ‼️
func  ‼️ (left: Int, right: Int) -> [Int] {
	return Array(right...left).reversed()
}

print( 30‼️10 )

```



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




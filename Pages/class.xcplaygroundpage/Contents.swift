

import Foundation



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

//isto e heranca, Bird e super class
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

let bird = Bird()
bird.LayEgg()
bird.sing()
print("\n")
let penquin = Penquin()
penquin.LayEgg()



//encapsulamento
//Encapsulamento e objetivo de inibir acesso a metodos ou propriedades que
//nao podem ser alterados
//niveis de acesso aqui sao por modulos

//open e public
//permite que entidades sejam usadas dentro de qualquer arquivo dentro do seu modulo e tabmem de um arquivo de outro module importe aquele modulo

//internal
// Permite que entidades sejam usadas dentro de qualuqer arquivo do seu proprio
// modulo,mas nao em arquivos de modulos de fora. E o padrao

//FilePrivate
//Restringe o uso de uma entidade somante dentro do seu proprio arquivo

// Private
// Restringe o uso de uma entidade somente dentro da sua propria delcaracao e a extensoes daquela declaracao que estejam no mesmo arquivo

//para inibir acesso a propriedades podemos usar private,open e public,filePrivate
//para metodos e o final
class CreditCard {
	let number: String
	let limit: Double
	private var invoceValue: Double = 0
	
	init(number:String,limit:Double){
		self.number = number
		self.limit = limit
	}
	
	//mesmo que ocorra heranca ninguem conseguira modificar essa funcao
	final func makePuchase(off value: Double, isInternational: Bool) -> Bool {
		let debit = isInternational ? value * 6.38/100 : value
		if debit > limit {
			return false
		}
		invoceValue = limit - debit
		return true
	}
	
	//so consigo invocar para consultar o invoceValeu,mas manipular nao
	var invoce: Double {
		return invoceValue
	}
	
}

let creditCard = CreditCard(number: "120304", limit: 1000)
print(creditCard.makePuchase(off: 100, isInternational: true))

print(creditCard.invoce)
//993.62






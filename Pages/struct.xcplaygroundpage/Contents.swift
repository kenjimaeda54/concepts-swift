import UIKit

//this is a  comment
/*this is a commment for many lines */

print("Hello world")

//interpolation
print("Hello world \(3+2)")

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

var userOne = User(name: "Ricardo", email: "kenji@gmail.com", followers:200, isActive:true)


var userTwo = User(name: "Erika", email: "Erika@gmail.com", followers:10, isActive: false)


userTwo.logStatus()


userOne.logStatus()


//struct tem a propreidade variavel computada

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
			return "Valor do bairro \(district)"
		}
		//newValue e uma palavra reservada
		set {
			district = 	newValue
		}
	}
	
	//consigo acessar sem instanciar ou seja City.alert()
	//Classes normalmente usa a palavra reservada class ao inves de statatic para metodos
	static func alert() {
		print("Minha cidade nao e permitida drogas")
	}
	
}

var district = City(district: "Alameida")
//vai trazer Alameida
print(district.newDistrict)

//aqui  estou usando set,entao "Com set meu novo bairro e Perereia"
district.newDistrict = "Perereia"
print(district.newDistrict)

City.alert()

City.speed = 100
print(City.speed)

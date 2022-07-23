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



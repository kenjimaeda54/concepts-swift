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



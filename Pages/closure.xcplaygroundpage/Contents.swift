

func result (n1:Int,n2:Int,operation:(Int,Int)->Int) -> Int {
    return operation(n1,n2)
}

func add(n1:Int,n2:Int)->Int {
    return n1 + n2
}
//vai aparecer no print 5
print(result(n1:2,n2:3,operation: add))

//e possivel reduzir a expressao acima com clusre
//abaixo com closure, em Swift segue um conceito parecido com c e bash
//os argumentos das funcoes sao passadas por $ ou seja
//consigo acessar os argumentos, $0 para primerio,$1 segundo e assim por diante

// closure normalmente e escrito dessa maneira
// {(n1,n2) Int in
//   n1  * n2

//}
// {(parametres) -> return type in
//  statements
//}
//abaixo uma maneira bem resumida
let total = result(n1:2,n2:3){$0 * $1}
print(total)

struct User {
    let altura: Double
    let name: String
    
    init(altura: Double,name: String) {
        self.altura = altura
        self.name = name
    }
}

var user1 = User(altura:1.68,name: "Ricardo")
var user2 = User(altura:1.20,name: "Erika")


let allUser = [user1,user2]

allUser.map({
    print("Eu me chamo \($0.name) e tenho \($0.altura)m")
})

let novo  = {print($0)}
novo(10)

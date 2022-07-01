import Foundation
//protocolos sao parecidos com interface,
//podem ser usadas em struct e class
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

let bird = Bird()
bird.LayEgg()
bird.sing()
print("\n")
let penquin = Penquin()
penquin.LayEgg()
penquin.fly()
print("\n")
let hen = Hen()
hen.fly()



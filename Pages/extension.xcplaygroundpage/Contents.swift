//: [Previous](@previous)

import Foundation

//extension da posibilidade de estedermos funcionalidades de classes,objetos,struct,dados primtivos


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


let arrayTop = ["banana","pera","joao"]


arrayTop.forEach({
	print($0)
})


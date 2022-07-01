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



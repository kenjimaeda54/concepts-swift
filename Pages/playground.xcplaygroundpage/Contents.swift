//: [Previous](@previous)

import Foundation

struct Element {
	var name: String
}

var element: [Element] = []

let newElement = Element(name: "joao")
element.append(newElement)

print(element[0].name)

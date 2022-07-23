//: [Previous](@previous)

import Foundation

var states = ["SP":"Sao Paulo","BH":"Bahia","MG":"Minas Gerais"]

//para iniciar um dicionario vazio
var studentsGredde: [String:Double] = [:]


//para inserior um valor no dicionario
states["PB"] = "Pernambuco"

//===================
//para alterar um valor posso ussar de duas maneiras

states["MG"] = "Minas"

print(states)

//posso tambem alterar um valor e retonar o antigo
let old = states.updateValue("Minas Gerais", forKey: "MG")
print(old)
//Optional("Minas")

//===================

//para remover um valor do dicionario
states["MG"] = nil
print(states)
//["PB": "Pernambuco", "BH": "Bahia", "SP": "Sao Paulo"]



//existe a opcao count e isEmpty
print(states.count)
print(states.isEmpty)


//===========
// e por fim consigo retornar todos os valores do dicionario e tambem suas chaves

//preciso converter para array
let values = Array(states.values)
print(values)
//["Pernambuco", "Bahia", "Sao Paulo"]

let keys = Array(states.keys)
print(keys)
//["PB", "BH", "SP"]

//===========












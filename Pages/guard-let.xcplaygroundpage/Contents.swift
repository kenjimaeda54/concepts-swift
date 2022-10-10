import Foundation


//normalmente voce verifica guard let quando precisa de fato verificar uma condicao
//e if else para desembrulhar

//voce pode usar varios guard let product = phone[id],carr[id] else {return error}
func getPhone(_ id: Int)  -> String {
	let phone = [
		1: "iphone",
		2: "sansug",
		3: "pera",
	]

	
	guard let product = phone[id]  else {return "Dont have phone"}
	return product

}



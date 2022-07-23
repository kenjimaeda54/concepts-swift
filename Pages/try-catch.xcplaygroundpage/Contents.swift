import Foundation


//tratamento de erros


enum LoginError: Error {
	case wrongPassword,wrongName,wrongInternet
	
}

func login(name:String,password:Int) throws -> Bool {
	if checkInternet() {
		if name !=  "Ricardo"{
			throw LoginError.wrongName
		}
		if  password != 1234 {
			throw LoginError.wrongPassword
		}
		return true
	}else {
	 throw	LoginError.wrongInternet
	}
	
}


func checkInternet() -> Bool {
	return false
}

//caso generalista,posso pegar um casso especifico
do{
	let userAuthenticated = try login(name:"Ricardo",password: 1234)
	print(userAuthenticated)
	 
}catch {
	print(error)
}

//variavel dentro do try e catch se torna de escopo so ele tem acesso
do{
	let userAuthenticated = try login(name:"Ricardo",password: 1234)
	print(userAuthenticated)
}catch LoginError.wrongName {
	print("Nome do usuario errado")
} catch LoginError.wrongPassword {
	print("Senha errado")
} catch LoginError.wrongInternet {
	print("Conexao ruim")
}

//dessa maneira nao me importa o erro,caso aconteca retornar nill para variavel
let userAuthenticated = try? login(name:"Joao",password: 123)
print(userAuthenticated)

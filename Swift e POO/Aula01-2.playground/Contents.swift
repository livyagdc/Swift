// Aula 01 - Struct e Classe

//Struct
struct ContaCorrente {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        if valor < 0 {
            saldo -= (valor * -1)
        } else {
            saldo -= valor
        }
    }
    
    mutating func depositar(_ valor: Double) {
        if valor < 0 {
            saldo += (valor * -1)
        } else {
            saldo += valor
        }
    }
}

var contaCorrente01 = ContaCorrente(nome: "Livya")
print(contaCorrente01.saldo)

contaCorrente01.depositar(800)
contaCorrente01.sacar(100)

print(contaCorrente01.saldo)

var contaCorrente02 = contaCorrente01
contaCorrente02.depositar(50)
contaCorrente01.depositar(60)

print(contaCorrente01.saldo)
print(contaCorrente02.saldo)

//Classe
class ClasseContaCorrente {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) {
        if valor < 0 {
            saldo -= (valor * -1)
        } else {
            saldo -= valor
        }
    }
    
    func depositar(_ valor: Double) {
        if valor < 0 {
            saldo += (valor * -1)
        } else {
            saldo += valor
        }
    }
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
}

var contaCorrenteClasse01 = ClasseContaCorrente(nome: "Livya")
print(contaCorrenteClasse01.saldo)

contaCorrenteClasse01.depositar(-900)
contaCorrenteClasse01.sacar(100)

print(contaCorrenteClasse01.saldo)

let contaCorrenteClasse02 = contaCorrenteClasse01
contaCorrenteClasse02.depositar(10)

print(contaCorrenteClasse01.saldo)
print(contaCorrenteClasse02.saldo)



//Classe - referência
//Struct - valor

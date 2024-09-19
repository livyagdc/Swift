//Aula 03 - Propriedades armazenadas, computadas e estáticas

class Conta {
    //Propriedades armazenadas:
    var nome: String
    var saldo = 0.0 {
        // Observadores de propriedades
        didSet {print("O seu valor antigo era de \(oldValue)")}
        willSet(novoValor) { print("O seu saldo está sendo alterado! O seu novo valor será de \(novoValor)")}
    }
    
    //Propriedade estática:
    static var taxaTransferencia = 1.0
    
    //Propriedade computada:
    var negativado: Bool {
        return saldo < 0
    }
    
    init(nome: String) {
        self.nome = nome
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
}

let conta1 = Conta(nome: "Livya")
print(conta1.saldo)
conta1.sacar(20)
print(conta1.saldo)
print(conta1.negativado)
conta1.depositar(50)
print(conta1.saldo)
print(conta1.negativado)

//Atividade
class Estudante {
    var nome: String
    var idade: Int
    static var contagemEstudantes = 0

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
        Estudante.contagemEstudantes += 1
    }
}

let estudante1 = Estudante(nome: "João", idade: 28)
let estudante2 = Estudante(nome: "Carlos", idade: 32)
let estudante3 = Estudante(nome: "Ana", idade: 29)
print(Estudante.contagemEstudantes)

//Atributo privado
struct Pessoa {
  var nome: String
  var idade: Int
  private(set) var altura: Double
  var peso: Double

  private var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}

let pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
// pessoa.imc -> Erro!
// pessoa.altura = 1.80 -> Erro!

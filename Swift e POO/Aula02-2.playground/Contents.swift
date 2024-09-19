// Aula 02 - Herança
// Structs não possui herança

class Conta {
    var saldo = 0.0
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func sacar(_ valor: Double){
        saldo -= valor
    }
}

//Classe ContaPoupanca filha da classe Conta
class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("Agora o cliente possui cartão de débito")
    }
    
    //Override
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init (nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

let contaPoupancaLivya = ContaPoupanca(nome: "Livya", possuiCartaoDebito: false)
contaPoupancaLivya.depositar(900)
print("Saldo poupança: \(contaPoupancaLivya.saldo)")
print(contaPoupancaLivya.possuiCartaoDebito)
contaPoupancaLivya.solicitarDebito()
print(contaPoupancaLivya.possuiCartaoDebito)
contaPoupancaLivya.sacar(100)
print(contaPoupancaLivya.saldo)

//Classe ContaCorrente filha da classe Conta
// Super - palavra usada quando nos referimos a classe pai
class ContaCorrente: Conta {
    func solicitarEmprestimo (_ valor: Double) {
        print("Cliente fez empréstimo no valor de: \(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
    
}

let contaCorrenteLivya = ContaCorrente(nome: "Livya")
print("Saldo corrente: \(contaCorrenteLivya.saldo)")
contaCorrenteLivya.solicitarEmprestimo(3000)
print("Saldo corrente: \(contaCorrenteLivya.saldo)")
contaCorrenteLivya.sacar(5)
print(contaCorrenteLivya.saldo)

//Polimorfismo - é a habilidade de tratar os objetos de maneira diferente dependendo do contexto em que está inserido
func exibeSaldoConta(_ conta: Conta) {
    print(conta.saldo)
}
exibeSaldoConta(contaCorrenteLivya)
exibeSaldoConta(contaPoupancaLivya)

//TypeCasting - é uma técnica que permite verificar o tipo específico de um objeto e executar ações específicas para cada tipo.
func verificarConta(_ conta: Conta) {
    
    if let contaCorrente = conta as? ContaCorrente {
        print("Conta é do tipo: Conta Corrente ⛓️")
        contaCorrente.solicitarEmprestimo(200)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {return}
    print("Conta é do tipo: Conta Poupanca")
    print(contaPoupanca.possuiCartaoDebito)
}

verificarConta(contaCorrenteLivya)
verificarConta(contaPoupancaLivya)

// Se adicionar final antes de declarar a classe, não será possível criar classes filhas daquela classe
final class Pessoa {}
//class Estudante: Pessoa {}

//Atividade:
class Carro {
  var modelo: String
  var marca: String
  var ano: Int

  init(modelo: String, marca: String, ano: Int) {
      self.modelo = modelo
      self.marca = marca
      self.ano = ano
    }
}

class Ford: Carro {
  var tipoCombustivel: String
  init(modelo: String, ano: Int, tipoCombustivel: String) {
    self.tipoCombustivel = tipoCombustivel
    super.init(modelo: modelo, marca: "Ford", ano: ano)
  }

    func alteraTipoCombustivel(novoTipo: String) {
    self.tipoCombustivel = novoTipo
  }
}

let fiesta = Ford(modelo: "Fiesta", ano: 2014, tipoCombustivel: "Etanol")
fiesta.alteraTipoCombustivel(novoTipo: "Gasolina")



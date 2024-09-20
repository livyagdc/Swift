// Aula 04

//Extensões
class Conta {
    var nome: String
    var saldo = 0.0
    
    init(nome: String) {
        self.nome = nome
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func sacar(_ valor: Double) -> ResultadoSaque {
        if valor > saldo {
            return .falha(erro: "Valor de saque é maior que o seu saldo.")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
    }
    
    //func transferir(_ contaDestino: Conta, _ valor: Double) {
    //    sacar(valor)
    //    contaDestino.depositar(valor)
    //}
    
}

extension Conta{
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

//func transferir(_ contaDestino: Conta, _ valor: Double) {
//    sacar(valor)
//    contaDestino.depositar(valor)
//}

var conta1 = Conta(nome: "Livya")
var conta2 = Conta(nome: "Júlia")

let resultado = conta1.sacar(50)

switch resultado {
case .sucesso(let novoValor): print("O saque foi um sucesso e o seu novo saldo é de \(novoValor)")
case .falha(let erro): print(erro)
}

conta1.depositar(2500)
conta1.transferir(conta2, 1000)
print(conta1.saldo)
print(conta2.saldo)

//Extension String
func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}

let texto = String("Livya")
contaCaracteresString(texto)

extension String {
    //Só pode ter propriedades computadas ou estáticas
    func contaCaracteresString() -> Int {
        return texto.count
    }
}

print(texto.contaCaracteresString())

// Diferença entre Self e self
extension Int {
    func somaNumeroCom(_ numero: Self) -> Self {
        return numero + self
    }
}

let numero = 10
let resultadoSoma = numero.somaNumeroCom(20)
print(resultadoSoma) // Será exibido no console o valor 30
//Self é Int, enquanto self é a instância, ou seja, a variável numeroDez com o valor 10.

// Protocolos - conjunto de regras definidas que precisam ser seguidas
protocol ContaProtocolo {
    var saldo: Double { get set }
    
    func depositar(_ valor: Double)
    
    func sacar(_ valor: Double)
}

class ContaCorrenteProtocolo: ContaProtocolo {
    var saldo: Double = 0
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
}


//Atividade
extension Int {
  func checaNumeroPar() -> Bool {
    return self % 2 == 0
  }
}
2.checaNumeroPar() // true


// Enumeração
enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

extension Conta {
    func pagamentoCartao(_ formaPagamento: FormaDePagamento ) {
        switch formaPagamento {
        case .boleto: print("O pagamento será efetuado por boleto")
        case FormaDePagamento.pix: print("O pagamento será efetuado por pix")
        case .saldoEmConta: print("O pagamento será efetuado por saldo em conta")
        }
    }
}
conta1.pagamentoCartao(.pix)

enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}



// Raw values - valor que é customizado para cada caso
enum Mes: Int {
    case janeiro = 1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)
var conta3: Conta = .init(nome: "Conta 03")


//Enum e optional

var valor: Int?
valor = 5

switch valor {
case .none: print("A opcional não possui nenhum valor.")
case .some(let valor): print("O valor da opcional é \(valor)")
}

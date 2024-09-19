// Desafio 1 - Propriedades computadas

class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade > 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}

var pessoa1 = Pessoa(nome: "Julia", idade: 40, altura: 1.65, peso: 65.5)
print(pessoa1.adulto)
print(pessoa1.imc)

//Resposta

struct PessoaStruct {
  let nome: String
  let idade: Int
  let altura: Double
  let peso: Double

  var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}

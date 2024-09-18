//Desafio 1 - Calculadora

struct CalculadoraStruct {
    var numero01: Double
    var numero02: Double
    
    mutating func somar () -> Double {
       let resultado = numero01 + numero02
        return resultado
    }
    
    mutating func subtrair () -> Double {
        let resultado = numero01 - numero02
         return resultado
    }
    
    mutating func multiplicar () -> Double {
        let resultado = numero01 * numero02
         return resultado
    }
    
    mutating func dividir () -> Double {
        let resultado = numero01 / numero02
         return resultado
    }
    
}

var calculoStruct = CalculadoraStruct(numero01: 6, numero02: 4)
print("Soma = \(calculoStruct.somar())")
print("Subtração = \(calculoStruct.subtrair())")
print("Divisão = \(calculoStruct.dividir())")
print("Multiplicação = \(calculoStruct.multiplicar())")

// Resposta
struct Calculadora {
  let numero1: Double
  let numero2: Double

  func soma() -> Double {
    return numero1 + numero2
  }

  func subtracao() -> Double {
    return numero1 - numero2
  }

  func divisao() -> Double {
    return numero1 / numero2
  }

  func multiplicacao() -> Double {
    return numero1 * numero2
  }
}

let calculadora = Calculadora(numero1: 6, numero2: 4)
print("Soma = \(calculadora.soma())")
print("Subtração = \(calculadora.subtracao())")
print("Divisão = \(calculadora.divisao())")
print("Multiplicação = \(calculadora.multiplicacao())")


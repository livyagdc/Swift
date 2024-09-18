// Desafio 03 - Retângulo

struct Retangulo {
    var base: Double
    var altura: Double
    
    mutating func calcularArea() -> Double {
        let area = base * altura
        return area
    }
    
    mutating func calcularPerimetro() -> Double {
        let perimetro = (base + altura) * 2
        return perimetro
    }
}

var retangulo1 = Retangulo(base: 5, altura: 2)
print("Área = \(retangulo1.calcularArea())mˆ2")
print("Perímetro = \(retangulo1.calcularPerimetro())m")

//Resposta:
class RetanguloClass {
  var base: Double
  var altura: Double

  init(base: Double, altura: Double) {
    self.base = base
    self.altura = altura
  }

  func calcularArea() -> Double {
    return base * altura
  }

  func calcularPerimetro() -> Double {
    return base * 2 + altura * 2
  }
}

let retangulo = RetanguloClass(base: 10, altura: 20)
retangulo.calcularArea()
retangulo.calcularPerimetro()

// Desafio 01 - Área

protocol Area {
    var base: Double {get}
    var altura: Double {get}
    
    func calcularArea() -> Double
}

struct Quadrado: Area {
    var base: Double
    var altura: Double
    
    func calcularArea() -> Double {
        return base * altura
    }
}

struct Triangulo: Area {
    var base: Double
    var altura: Double
    
    func calcularArea() -> Double {
        return (base * altura) / 2
    }
}

var quadrado1 = Quadrado(base: 10, altura: 10)
print(quadrado1.calcularArea())

var triangulo1 = Triangulo(base: 5, altura: 7)
print(triangulo1.calcularArea())


//Resposta:

/*
protocol Area {
  var area: Double { get }
}

struct Quadrado: Area {
  var lado: Double
  var area: Double {
    return lado * lado
  }
}

struct Triangulo: Area {
  var base: Double
  var altura: Double
  var area: Double {
    return (base * altura) / 2
  }
}

let quadrado = Quadrado(lado: 7)
let triangulo = Triangulo(base: 4, altura: 3)
quadrado.area
triangulo.area
*/

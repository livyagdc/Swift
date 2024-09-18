// Desafio 02 - Restaurante

class Restaurante {
    var nome: String
    var tipoDeComida: String
    var numeroPedidos = 0
    
    init(nome: String, tipoDeComida: String) {
        self.nome = nome
        self.tipoDeComida = tipoDeComida
    }
    
    func recebePedido () {
        numeroPedidos += 1
    }
    
    func calculaTotalPedidos() -> Int {
        var total = numeroPedidos * 35
        return total
    }
}

let restaurante01 = Restaurante(nome: "Restaurante 01", tipoDeComida: "Sobremesa")

restaurante01.recebePedido()
restaurante01.recebePedido()
print(restaurante01.numeroPedidos)
print(restaurante01.calculaTotalPedidos())


//Resposta:

struct RestauranteStruct {
  var nome: String
  var tipoComida: String
  var numeroPedidos: Int = 0

  mutating func recebePedido() {
    self.numeroPedidos += 1
  }

  func calculaTotalPedidos() -> Double {
    return 35.0 * Double(self.numeroPedidos)
  }
}

var restaurante = RestauranteStruct(nome: "Restaurante da Gi", tipoComida: "Brasileira")
restaurante.recebePedido()
restaurante.recebePedido()
restaurante.calculaTotalPedidos()


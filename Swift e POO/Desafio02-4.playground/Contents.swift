// Desafio 02 - Moedas

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]

func somarMoedas(_ moedas: [Moeda]) {
    var somaMoedas = 0
    
    for moeda in moedas {
        somaMoedas += moeda.rawValue
    }
    print(somaMoedas)
}

somarMoedas(moedas)

//Resposta

/*
 enum Moeda: Int {
   case UmCentavo = 1
   case CincoCentavos = 5
   case DezCentavos = 10
   case VinteCincoCentavos = 25
   case CinquentaCentavos = 50

   static func contarMoedas(_ moedas: [Self]) -> Int {
     var soma = 0
     for valor in moedas {
       soma += valor.rawValue
     }
     return soma
   }
 }

 let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]
 Moeda.contarMoedas(moedas)
 */

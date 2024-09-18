/*
Desafio 2 - Estados do Brasil
Dado um dicionário com duas letras que representam um estado como chave e o nome inteiro do estado como valor, escreva uma
função que exiba todos os estados cujo nome tenha mais que 8 caracteres.
*/

func tamanhoEstados(_ estados: Dictionary<String, String>) {
  for estado in estados.values {
    
    if estado.count > 8 {
      print(estado)
    }
  }
}
let estados: [String: String] = [
    "PE": "Pernambuco",
    "SP": "Sao Paulo",
    "RJ": "Rio de Janeiro",
    "CE": "Ceara"
  ]
tamanhoEstados(estados)

//Resposta
func exibeEstado(_ estados: [String: String]) {
    for estado in estados.values {
        if estado.count > 8 {
            print(estado)
        }
    }
}
exibeEstado(estados)

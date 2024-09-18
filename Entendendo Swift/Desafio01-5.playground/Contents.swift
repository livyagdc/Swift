//Desafio 01: Aprovado ou Reprovado?

//Escreva uma função que receba um array de notas de um determinado aluno e retorne a média aritmética dessas notas.

func calcularMedia(_ notas: Array<Double>) {
    var soma: Double = 0
    for i in 0..<notas.count {
        soma += notas[i]
    }
    
    var media = soma / Double(notas.count)
    print(media)
}

calcularMedia([5.5, 6.7, 8.8])


func calcularMedia2(_ notas: Array<Double>) {
  var soma = 0.0
  
  for i in 0..<notas.count {
    soma += notas[i]
  }
  var media = soma / Double(notas.count)
  
  print(media)
}
let notas = [9.0, 7.5, 8.5, 9.5, 10]
calcularMedia2(notas)

/* Resposta
func calculaMedia(_ notas: [Double]) -> Double {
    var somaNotas = 0.0
    let quantidadeElementos = notas.count
    for nota in notas {
        somaNotas += nota
    }
    return somaNotas / Double(quantidadeElementos)
}
let notas = [8.9, 10, 9.5, 6.7, 8.5]
let mediaNotas = calculaMedia(notas)
print(mediaNotas)
*/

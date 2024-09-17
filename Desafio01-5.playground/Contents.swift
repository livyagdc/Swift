//Desafio 01: Aprovao ou Reprovado?

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


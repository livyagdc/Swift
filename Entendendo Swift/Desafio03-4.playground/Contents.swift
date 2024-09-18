//Desafio 03 - Indo ao restaurante

func calcularConta(_ valorConta: Double, _ qtdPessoas: Int) -> Double {
    let valorTotal = Int(valorConta * 1.1)
    let dividirConta = valorTotal / qtdPessoas
    let contaIndividual = Double(dividirConta)
    return contaIndividual
}
print(calcularConta(120.00, 4))

//Resposta
func divideConta(_ total: Double, _ numeroPessoas: Int) -> Double {
  let valorComTaxa = total * 1.1
  return valorComTaxa / Double(numeroPessoas)
}

let totalParaCadaPessoa = divideConta(120, 4)
print(totalParaCadaPessoa)

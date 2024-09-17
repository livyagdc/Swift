//Desafio 02 - Função com opcional

func verificarNome(_ nome: String?) {
    print(nome ?? "Nome não especificado")
}

verificarNome(nil)

//Resposta
func mostraNome(nome: String?) {
    guard let nome = nome else {
        print("Nome não identificado")
        return
    }
    print(nome)
}
mostraNome(nome: "Giovanna")
mostraNome(nome: nil)


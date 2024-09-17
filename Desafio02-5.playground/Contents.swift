// Desafio 02: Estados do Brasil

func exibeEstado(_ estados: [String: String]) {
    for estado in estados.values {
        if estado.count > 8 {
            print(estado)
        }
    }
}

let estados = [
    "PE": "Pernambuco",
    "SP": "São Paulo",
    "CE": "Ceará",
    "RJ": "Rio de Janeiro"
]
exibeEstado(estados)

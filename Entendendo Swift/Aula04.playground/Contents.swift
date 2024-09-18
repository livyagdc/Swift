// Aula 04 - Funções: blocos de código que executam alguma tarefa

func soma(_ numero1: Int, _ numero2: Int) -> Int {
    var resultado = numero1 + numero2
    return resultado
}
print(soma(5, 3))


// Argument Label
func multi(_ numero1: Int, vezes numero2: Int) -> Int {
    var resultado = numero1 * numero2
    return resultado
}
print(multi(5, vezes:3))

func verificaAdulto(_ idade: Int) -> Bool {
    return idade >= 18
}

print(verificaAdulto(19))
verificaAdulto(13)

//os parâmetros de uma função são recebidos como uma constante
//copy-in copy-out - passagem de parâmetros por valor e passagem por referência

//Passagem por referência
func somaNumero(_ numero: inout Int) {
    numero += 1
    print(numero)
}
var valor = 10
somaNumero(&valor)
print(valor)

//Opcionais
var numeroEmString = "45"
var numero = Int(numeroEmString)
print(numero) //opcinonal implícito

//desembrulhando a força
var telefone: String?
telefone = "9999"
print(telefone)
print(telefone!)

//Desembrulhando do jeito certo:

//Optional binding
if telefone != nil {
    print(telefone!)
}

if let telefone = telefone {
    print(telefone)
}

//Usando o guard let
func autenticar(usuario: String?, senha: String?) {
    guard let usuario = usuario, let senha = senha
    else {
        print("Usuário ou senha incorretos")
        return
    }
    
    print(usuario)
    print(senha)
}
autenticar(usuario: "Livya", senha: "1234")

//Optional chaining
if let primeiroCaractere = telefone?.first {
    print(primeiroCaractere)
}

telefone = nil
//Nil coalescing operator
print(telefone ?? "Não existe valor para telefone.")

//não é possível realizar operações com valores opcionais



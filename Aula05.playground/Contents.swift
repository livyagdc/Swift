//Aula 05 - Arrays

var notas: [Double] = [8.5, 9.0, 7.2, 6.0]

var arrayVazio = Array<String>()

notas.isEmpty
arrayVazio.isEmpty

notas.count
notas.min()
notas.max()
notas.contains(8.5)
notas.contains(4)
notas.firstIndex(of: 7.2)
notas.firstIndex(of: 10)

notas.append(10)
print(notas)

notas.insert(7.5, at: 2)
print(notas)

notas += [6.5]
print(notas)

notas.removeLast()
print(notas)

notas.removeFirst()
print(notas)

notas.remove(at: 3)
print(notas)

for nota in notas {
    print(nota)
}

for i in 0..<notas.count{
    print(i, notas[i])
}

for (index, nota) in notas.enumerated(){
    print(index, nota)
}

let array1 = [Int]()
//let array2 = []
let array3: [String] = []
let array4 = [1, 2, 3]
print(array4[0])
//array4.append(5)

// Operando com sets
// não possui ordem definida e não pode ter valors duplicados
var numbers: Set<Int> = [1, 2, 3, 4, 5]

numbers.contains(6)
numbers.insert(6)
numbers.insert(7)
numbers.remove(7)
print(numbers)

//Tuplas
var tupla = (5, 6.5)

typealias Coordenadas = (x: Int, y: Double)

var coordenada: Coordenadas = (x: 5, y: 6.7)
coordenada.x
coordenada.y

var pessoa = (nome: "Livya", idade: 19)
pessoa.nome
pessoa.idade

var (_, idade) = pessoa
print(idade)

//Dicionários
var pontos = [
    "pessoa1": 8.5,
    "pessoa2": 7.5,
    "pessoa3": 9.0
]

var pessoas: [String: Int] = [:]
pessoas.reserveCapacity(10)

print(pontos["pessoa3"])
print(pontos["pessoa4"])

pontos.isEmpty
pontos.count
pontos["pessoa4"] = 15
print(pontos)

pontos.updateValue(9, forKey: "pessoa2")
pontos.updateValue(14, forKey: "pessoa5")
print(pontos)

pontos["pessoa3"] = nil
pontos.removeValue(forKey: "pessoa5")
print(pontos)

for (nome, ponto) in pontos{
    print("O usuário \(nome), fez \(ponto) pontos.")
}

for nome in pontos.keys {
    print(nome)
}

for ponto in pontos.values {
    print(ponto)
}

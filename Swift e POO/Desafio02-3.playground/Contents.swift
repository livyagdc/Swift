// Desafio 02 - Observadores de propriedades

class Empregado {
    var nome: String
    
    var salario: Double {
        willSet(novoSalario){
            if novoSalario > salario {
                print("Parabéns, você recebeu uma promoção")
            } else if novoSalario == salario {
                print("Parece que não houve uma promoção dessa vez.")
            }
        }
        
        didSet{
            if oldValue > salario {
                print("O novo salário não pode ser menor do que era anteriormente")
                salario = oldValue
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
    
    func alterarSalario(_ valor: Double) {
        salario = valor
    }
}

var empregado1 = Empregado(nome: "Empregado 01", salario: 2500)
empregado1.alterarSalario(2500)
print(empregado1.salario)

empregado1.alterarSalario(2500.5)
print(empregado1.salario)

empregado1.alterarSalario(2100)
print(empregado1.salario)

empregado1.salario = 3000
print(empregado1.salario)

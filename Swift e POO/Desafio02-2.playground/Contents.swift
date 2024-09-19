// Desafio 02 - Calculando o salário do vendedor

class Empregado {
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

class Gerente: Empregado {
    var departamento: String
    
    init(nome:String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

class Vendedor: Empregado {
    func percentualComissao(_ numeroVendas: Int) {
        let comissao = numeroVendas * 5
        salario += Double(comissao)
        print("A comissão do vendedor é de R$\(comissao),00")
    }
}

let vendedor1 = Vendedor(nome: "Vendedor 1", salario: 1600.00)
print(vendedor1.salario)
vendedor1.percentualComissao(5)
print(vendedor1.salario)

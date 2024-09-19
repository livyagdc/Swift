// Desafio 03 - Verificando tipos

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
    
    init(nome: String, salario: Double, departamento: String) {
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

let vendedor1 = Vendedor(nome: "Daniel", salario: 1600.00)
print(vendedor1.salario)
vendedor1.percentualComissao(5)
print(vendedor1.salario)


func verificaTipo(_ empregado: Empregado) {
    
    if let gerente = empregado as? Gerente {
        print("O empregado \(gerente.nome) é um(a) gerente e está no departamento \(gerente.departamento).")
    }
    
    guard let vendedor = empregado as? Vendedor else {return}
    print("O empregado \(vendedor.nome) é um(a) vendedor(a).")
}

let gerente1 = Gerente(nome: "Felipe", salario: 2100.00, departamento: "RH")
verificaTipo(vendedor1)
verificaTipo(gerente1)

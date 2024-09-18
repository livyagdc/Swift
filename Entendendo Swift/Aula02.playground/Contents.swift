import UIKit

//Operadores lógicos e condições


// if...else
var idade = 19
var possuiCNH = true

if idade >= 18 {
    print("Pode fazer a CNH")
    if possuiCNH {
        print("Pode dirigir")
    }else {
        print("Deixe de querer dirigir sem CNH, vá simbora fazer a sua.")
    }
}else {
    print("Não pode fazer a CNH. Espere mais \(18 - idade) ano(s).")
}

// Operador ternário
idade >= 18 ? print("Maior de idade") : print("Não é maior de idade")

//Switch case
var intervaloFechado = 10...20
var intervaloSemiAberto = 10..<20

var numeroAleatorio = Int.random(in: -20...25)
print(numeroAleatorio)

switch numeroAleatorio {
case 0...10: print("Número está entre 0 e 10")
case 10...20: print("Número está entre 10 e 20")
default: print("Número é menor que 0 ou maior que 20")
}

switch numeroAleatorio {
case _ where numeroAleatorio % 2 == 0: print("Número é par")
case _ where numeroAleatorio % 2 != 0: print("Número é ímpar")
default: break
}

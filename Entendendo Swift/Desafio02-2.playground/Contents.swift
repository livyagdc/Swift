import UIKit

//Desafio 02 - Idade do usuário

let idade = 14

switch idade {
case 0...13: print("Criança")
case 13...18: print("Adolescente")
default: if idade < 0 {print("Idade inválida")}else{print("Adulto")}
}

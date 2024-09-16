import UIKit
//Desafio 01 - Pontuação do usuário

// Crie uma constante que armazene uma pergunta “Qual o valor de 8 x 2?” no formato String. A seguir, crie uma constante que armazene a resposta correta e uma constante que armazene a resposta do usuário;

// Além disso, crie uma variável do tipo inteiro que armazena a pontuação do usuário. Caso a resposta do usuário for igual a resposta correta, acrescente em 1 o valor da pontuação. Caso não for igual, diminua em 1 a pontuação. No final, imprima a pontuação do usuário.
import Foundation

// Definição das constantes e variáveis
let pergunta = "Qual o valor de 8 x 2?"
let respostaCorreta = 16 // 8 x 2 = 16
var pontuacao = 0 // Inicialmente a pontuação é 0

// Impressão da pergunta para o usuário
print(pergunta)

// Leitura da resposta do usuário
if let input = readLine(), let respostaUsuario = Int(input) {
    // Verificação da resposta do usuário
    if respostaUsuario == respostaCorreta {
        pontuacao += 1 // Incrementa 1 na pontuação se a resposta estiver correta
    } else {
        pontuacao -= 1 // Decrementa 1 na pontuação se a resposta estiver errada
    }
} else {
    print("Entrada invalida. Por favor, insira um numero.")
}

// Impressão da pontuação final
print("A pontuacao do usuario eh: \(pontuacao)")

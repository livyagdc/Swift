// Desafio 01 - Verificar se o número é primo ou não.
func verificarNumeroPrimo(_ numero: Int) -> Bool {
    return numero > 1 && numero % 2 != 0 && numero % 3 != 0 && numero % 5 != 0 && numero % 7 != 0
}
print(verificarNumeroPrimo(49))
print(verificarNumeroPrimo(11))

// Resposta
func primo(_ number: Int) -> Bool {
   let start = 2
    
   for i in start..<number {
       if number % i == 0 {
                 return false
             }
   }
   return true
}
print(primo(49))
print(primo(11))

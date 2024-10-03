import UIKit

func printLoop(icone: String, multiplicador: Int) {
    for i in 1..<10 {
        print(icone + "\(i * multiplicador)")
    }
}

func filaSimples() {
   
    /*
     Jeito errado:
     let fila1 = DispatchQue.main
    */
    
    let fila1 = DispatchQueue(label: "com.fila1")
   
//    fila1.sync {
//        printLoop(icone: "🔵", multiplicador: 1)
//    }
    fila1.async {
        printLoop(icone: "🔵", multiplicador: 1)
    }
    
    printLoop(icone: "🛑", multiplicador: 100) //main
}

func filaComCorrencia() {
    let fila2 = DispatchQueue(label: "com.fila2", attributes: .concurrent)
    
    fila2.async {
        printLoop(icone: "🔵", multiplicador: 1)
    }
    
    fila2.async {
        printLoop(icone: "🛑", multiplicador: 10)
    }
    
    fila2.async {
        printLoop(icone: "👻", multiplicador: 100)
    }
}


func filaComQos() {
//    1: Mesma QoS
//    let fila3 = DispatchQueue(label: "com.fila3", qos: DispatchQoS.utility)
//    let fila4 = DispatchQueue(label: "com.fila4", qos: DispatchQoS.utility)
    
//    2: QoS Diferentes:
//    let fila3 = DispatchQueue(label: "com.fila3", qos: DispatchQoS.background)
//    let fila4 = DispatchQueue(label: "com.fila4", qos: DispatchQoS.userInitiated)
    
//    3: QoS Baixa
    let fila3 = DispatchQueue(label: "com.fila3", qos: DispatchQoS.utility)
    let fila4 = DispatchQueue(label: "com.fila4", qos: DispatchQoS.background, attributes: .concurrent)
    
    fila3.async {
        printLoop(icone: "🔵", multiplicador: 1)
    }
    
    fila4.async {
        printLoop(icone: "🛑", multiplicador: 100)
    }
}

//filaSimples()
filaComCorrencia()
//filaComQos()



import UIKit

import Foundation

func calcularOperaciones() {
    // Generar números aleatorios a, b y c entre 1 y 100
    let a = Int.random(in: 1...100)
    let b = Int.random(in: 1...100)
    let c = Int.random(in: 1...100)
    
    print("El valor numero 1 es", a);
    print("El valor numero 2 es", b);
    print("El valor numero 3 es", c);

    // Calcular el volumen de un prisma
    let volumenPrisma = a * b * c
    print("Volumen del prisma: \(volumenPrisma)")
    imprimirTipoDato(volumenPrisma)

    // Calcular el volumen de un cilindro
    let volumenCilindro = Double.pi * Double(a) * Double(a) * Double(b)
    print("Volumen del cilindro: \(volumenCilindro)")
    imprimirTipoDato(volumenCilindro)

    // Regla de 3
    let reglaDe3 = Double(a) / Double(b) * Double(c)
    print("Resultado de la regla de 3: \(reglaDe3)")
    imprimirTipoDato(reglaDe3)

    // Calcular el perímetro de un triángulo
    let perimetroTriangulo = a + b + c
    print("Perímetro del triángulo: \(perimetroTriangulo)")
    imprimirTipoDato(perimetroTriangulo)

    // Calcular el área de un trapecio
    let areaTrapecio = Double(a + b) / 2 * Double(c)
    print("Área del trapecio: \(areaTrapecio)")
    imprimirTipoDato(areaTrapecio)
}

func imprimirTipoDato(_ valor: Any) {
    // Imprimir el tipo de dato del valor
    if let valorEntero = valor as? Int {
        print("Tipo de dato: Entero")
    } else if let valorDouble = valor as? Double {
        print("Tipo de dato: Flotante")
    } else {
        print("Tipo de dato: Otro")
    }
}

// Llamar a la función para realizar los cálculos
calcularOperaciones()

// los cambios de tipo de dato se dan por que la precisión es distinta. en algunos casos es necesario hacer el tipo de cambio de dato para obtener el resultado entero. Los dobles y flotantes aceptan los números con número decimal, mientras que el entero no.

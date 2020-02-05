import UIKit

var str = "Hello, This is Actividad 4"

//Enumeración de Datos
var datos = [3,6,9,2,4,1]

let filtered = datos.filter { (element) -> Bool in
    return element != 6 && element != 9
}


//Suma
func sum(a: Int, b: Int) -> Int {
    return a + b
}

sum(a:6, b:3)


//Potencia
func pow(a: Int) -> Int {
    return a * a
}

pow(a:8)


//Enumeración
enum mesElegido{
    case Enero
    case Febrero
    case Marzo
    case Abril
    case Mayo
    case Junio
    case Julio
    case Agosto
    case Septiembre
    case Octubre
    case Noviembre
    case Diciembre
}

var mesCounter:mesElegido
mesCounter = .Noviembre

switch mesCounter{
case .Enero:
        print("Enero")
case .Febrero:
    print("Febrero")
case .Marzo:
    print ("Marzo")
case .Abril:
    print ("Abril")
case .Mayo:
    print ("Mayo")
case .Junio:
    print ("Junio")
case .Julio:
    print ("Julio")
case .Agosto:
    print ("Agosto")
case .Septiembre:
    print ("Septiembre")
case .Octubre:
    print ("Octubre")
case .Noviembre:
    print ("Noviembre")
case .Diciembre:
    print ("Diciembre")
default:
    print ("Se nos acabaron los meses, qué rapido se va el año no?")
}

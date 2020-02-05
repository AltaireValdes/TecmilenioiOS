import UIKit

var str = "Hello, this is Actividad 5"


//Persona
class Persona{
    var saludo = "", paso = 0
    
    func Saludar(mensaje: String)
    {
        self.saludo = mensaje + " mucho gusto"
    }
    
    func Caminar(pasos: Int){
        self.paso = pasos
    }
}

var carnal = Persona()
carnal.Saludar(mensaje: "Hola")
carnal.Caminar(pasos: 256)

print("El humano dice \(String(describing: carnal.saludo))")
print("El humano hizo \(String(describing: carnal.paso)) pasos")


//Struct
struct Pantalla
{
    var alto:Int
    var ancho:Int
    
    init (alto:Int, ancho:Int)
    {
        self.alto = alto
        self.ancho = ancho
    }
    
    func tamañoVid() -> (Int, Int)
    {
        return (self.alto, self.ancho)
    }
}

var tamaño = Pantalla(alto: 1024, ancho: 768)
tamaño.tamañoVid()


//Extención
extension Int {
    var dias:Int{
        return self*12*30
    }
    func horas() -> Int
    {
        return self*24*60
    }
}

4.dias
4.horas()


//Optional

var ciudad = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe:Int?

existe = ciudad["DF"]
existe = ciudad["PUE"]

if ciudad["DF"] != nil{
    print("Si existe")
} else{
    print("No existe")
}

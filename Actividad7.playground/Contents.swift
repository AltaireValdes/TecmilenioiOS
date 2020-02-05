import UIKit

var str = "Hello, playground"

//Costos_Referencia
var costo_referencia:[Float] = [8.3,10.5,9.9]
var indice:Int = 0

for i in costo_referencia
{
    costo_referencia[indice] = i*0.16
    indice += 1
}

costo_referencia

func PorPorcentaje(arreglo:[Float]) -> [Float]
{
    var resultado:[Float] = []
    for i in arreglo
    {
        resultado.append(i*0.16)
    }
    return resultado
}

PorPorcentaje(arreglo: costo_referencia)
costo_referencia

let Suma = {(x:Int, y:Int) -> Int in return x + y}

Suma(2, 2)

func SumaTres(a:Int, b:Int, c:Int) -> Int
{
    return Suma(a, b) + c
}

SumaTres(a: 3, b: 3, c: 3)


//Personalizadas y Genéricas
extension Array
{
    func SAcumulada<T> (inicial: T, acumula:(T,
        Element)->T)->T
    {
        var respuesta:T = inicial
        for valor in self
        {
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}

var datos = [3,7,9,2]
var letras = ["a", "e", "i", "o", "u"]
datos.SAcumulada(inicial: 0) {(a,b) in a + b}
letras.SAcumulada(inicial: "") {(a,b) in a + b}


//MAP
var precios = [4.2, 5.3, 8.2, 4.5]

var sumarImpuesto = precios.map{a in return a - (a * 0.16)}
sumarImpuesto

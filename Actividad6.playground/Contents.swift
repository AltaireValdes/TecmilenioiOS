import UIKit

var str = "Hello, this is Actividad 6"
print(str)


//prefix
prefix operator +++

prefix func +++(valor:Int)->Int
{
    let v = valor + valor
    return v
}

+++5
+++2

infix operator |>

func |> (a:Int, f:(Int)->Int) -> Int
{
    return f(a)
}

func suma2(dato:Int) -> Int
{
    return dato + 2
}

5|>suma2
3|>suma2



//subscript
let cantidades = [2, 5, 3, 4]

class Cantidad
{
    var valores:[Int]
    init(v:[Int])
    {
        self.valores = v
    }
    
    subscript(idx:Int) -> Int
    {
        get
        {
            return valores[idx]
        }
        
        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

let v1 = Cantidad(v: cantidades)

print (cantidades)



//control de errores
let dictError = ["A":1, "B":2,"C":3]

func Existe(idx:String)
{
    guard let existe = dictError[idx] else {
        print ("No existe")
        return
    }
    print("Existe \(existe)")
}

Existe(idx: "B")
dictError["D"]

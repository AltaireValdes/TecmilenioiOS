import UIKit

let n1 = 4
let n2 = 6
let n3 = 10
let n4 = 1
let n5 = (4, 6, 10, 1)

let d1 = 6.1
let d2 = 3.9
let d3 = 4.5
let d4 = 1.5
let d5 = (6.1, 3.9, 4.5, 1.5)

var t1 = "Hellow"
var t2 = "World"
var t3 = "You are"
var t4 = "Really nice"
var t5 = ("Hellow", "World", "You are", "Really nice")

var array:Array<Int> = Array<Int>()
array.append(1)
array.append(2)
array.append(3)
array.append(4)
array.append(5)
array.append(6)
array.append(7)
array.append(8)
array.append(9)
array.append(10)
array.count

var dictionary:Dictionary<String, Int> = Dictionary<String, Int>()
dictionary = ["Domingo":7]
dictionary["Lunes"] = 1
dictionary["Martes"] = 2
dictionary["Miércoles"] = 3
dictionary["Jueves"] = 4
dictionary["Viernes"] = 5
dictionary["Sabado"] = 6


print("Los valores  son: \(n1), \(n2), \(n3), \(n4)")
print("Los valores juntos son: \(n5)")
print("Los valores float son: \(d1), \(d2), \(d3), \(d4)")
print("Los valores float juntos son: \(d5)")
print("Los textos son: \(t1) \(t2) \(t3) \(t4)")
print("Los textos juntos son: \(t5)")
print(array)
print("Diccionario: \(dictionary)")

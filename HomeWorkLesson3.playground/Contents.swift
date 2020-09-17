import UIKit

var str = "Hello, playground"

struct Car{
    var brand: String
    var model: String
    var year : Int
    var cubicCapacity: Int
    var fuelType: String
    var typeGear: String
 
  
    init ( brand: String, model: String, year: Int, cubicCapacity: Int, fuelType: String, typeGear: String){
        self.brand = brand
        self.model = model
        self.year = year
        self.cubicCapacity = cubicCapacity
        self.fuelType = fuelType
        self.typeGear = typeGear
        
    
    }
    func carInfo (){
        }
    
}
let auto = Car (brand: "Mercedes-Benz", model: "E-class", year: 2005, cubicCapacity: 2200, fuelType: "Diesel", typeGear: "Automatic")
auto.brand
auto.model

auto.carInfo()

    

import Foundation


class PassengerCar {
    var vehicles = "Vehicle"
    var transmission = "tranmission"
    var wheels = "wheels"
    
    var description: String {
        return " All passenger car have \(vehicles), \(transmission) and \(wheels).\n"
    }
}
let car = PassengerCar()
print(car.description)

class Bisnes: PassengerCar {
    var lux = "Luxery"
    
    override var description: String {
        return super.description + "cars are divided into classes one of which \(lux).\n"
    }
   
}
let bisnes = Bisnes()
print(bisnes.description)

class Mercedes: Bisnes {
    let body = "Sedan"
    let modelName = "S"
    var interior = "leather seats"
    var price = "Higt price"
    
   override var description: String {
        return super.description + "All passenger car \(lux) class has a name \(modelName).  They have only a \(body) \(interior) and \(price).\n"
    }
    
    
    }


let mercedes = Mercedes()
print(mercedes.description)

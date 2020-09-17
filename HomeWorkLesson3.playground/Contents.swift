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

    
    var yearModel = 2005
    if yearModel >= 2004 && yearModel <= 2008 {
        print ("The model w211")
    } else if yearModel >= 2008 {
        print ("The model w212")
}

  

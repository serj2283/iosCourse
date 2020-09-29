import UIKit
// 1. Придумать ENUM к которому можно применить rawValue (не Error), другой к которому можно применить Associated Values (не из примеров с занятия)

enum YearMounth: Int {
    case january = 1
    case february = 2
    case march = 3
    case april = 4
    case may = 5
    case june = 6
    case july = 7
    case august = 8
    case september = 9
    case october = 10
    case november = 11
    case december = 12
}
YearMounth(rawValue: 12)
YearMounth(rawValue: 6)

// row value String
enum SocialPlatform: String {
    case facebook = "This is my favorite"
    case instagramm = "Sometimes I post photos"
    case youtube = "Subscribeв to bloggers"
    case yandexmusic = "My favorite music platform"
}
func OpenPlatform (on platform: SocialPlatform){
    print(platform.rawValue)
}
OpenPlatform(on: .yandexmusic)

// associated value
enum Navi {
    case city (speedLimit: Int)
    case highway (speedLimit: Int)
    case turn (action: Action)
    enum Action {
        case Left
        case Right
    }
}
var city = Navi.city( speedLimit: 76)
var highway = Navi.highway( speedLimit: 120)
var turn = Navi.turn(action: .Left)

func getNavi (navi: Navi) {
    
    switch navi {
        
    case .city (speedLimit: let speedLimit) where speedLimit > 61:
        print ("Warning your speed \(speedLimit) km/h")
        
    case .city(speedLimit:):
        print ("Your speed Ok")
        
    case .highway (speedLimit: let speedLimit) where speedLimit > 121:
        print (" Warning your speed \(speedLimit) km/h")
        
    case .highway(speedLimit:):
        print ("You speed Ok")
        
    case .turn(let action):
        print ("\(action)")
    }
}
getNavi(navi: city)
getNavi(navi: highway)

// 2. Создать опционалы типов Int, Double, String + какого-то своего класса, а также применить все виды разворачивания: Optional Binding, Optional chaining, nil-coalesing (??)

// optional chaining
class Car {
    var stay: Stay?
}

class Stay {
    var parcPlaceNumber = 15
}
let bmw = Car()

let parkCount = bmw.stay?.parcPlaceNumber

if let parkCount = bmw.stay?.parcPlaceNumber {
    print("BMW owns parking\(parkCount).")
} else {
    print("Unable parking")
}
bmw.stay = Stay ()

if let parkCount = bmw.stay?.parcPlaceNumber {
    print("BMW owns parking\(parkCount).")
} else {
    print("Unable parking")
}
//optional Binding
func newModel (name: String?){
    guard let name = name else {
        print("Out of stock.")
        return
    }
    print("New \(name) in stock.")
}
newModel(name: nil)
newModel(name: "Audi")

//nil coleasing
//до конца не разобрался

// 3. Описать с помощью ENUM погодные явления, сопроводить(где возможно) associated values//row value Int

enum WeatherConditions {
    case temperature (celcius: Double)
    case cloudiness
    case fallout (typeOfFallout: String)
    case wind
}

func whatToWear (if goForWalk: WeatherConditions) {
    switch goForWalk {
    case .temperature(let celcius) where celcius <= 10:
        print("It's cold outside. Put on warm clothes.")
    case .cloudiness:
        print("You'd better bring an umbrella and wear a scarf.")
    case .fallout(let typeOfFallout) where typeOfFallout.lowercased() == "rainy" || typeOfFallout.lowercased() == "storm":
        print("You'd better bring an umbrella and wear a scarf.")
    case .wind:
        print("It's windy outside. Put on warm clothes.")
    case .temperature, .fallout:
        print("It's sunny and warm outside. Put on a dress.")
    }
}

whatToWear(if: .temperature(celcius: 17.5))
whatToWear(if: .cloudiness)
whatToWear(if: .fallout(typeOfFallout: "storm"))

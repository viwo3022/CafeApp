//
//  drinks.swift
//  sandwich
//
//  Created by Vienna Wong on 8/2/21.
//

import Foundation


//Identifiable tells the list in swift when Items are added or taken off
struct Drink: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var caffinated: Bool
    var price: Decimal
    
    var imageName: String {return name}
    var thumbnailName: String{return name + "thumb"}
}


let myDrinks = [
    Drink(name: "Latte", ingredientCount: 2, caffinated: true, price: 3.50),
    Drink(name: "Milkshake", ingredientCount: 4, caffinated: false, price: 5.00),
    Drink(name: "Americano", ingredientCount: 2, caffinated: true, price: 3.50),
    Drink(name: "Coffee", ingredientCount: 1, caffinated: true, price: 2.00),
    Drink(name: "Matcha", ingredientCount: 3, caffinated: true, price: 4.00)
]

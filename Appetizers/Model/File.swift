//
//  File.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 10/10/25.
//

import Foundation


struct Appetizer: Decodable, Identifiable { //Decodable nos va ayudar a leer el archivo Json que le traigamos sin modificar la info que este dentro
    let name : String
    let description : String
    let protein : Int
    let id : Int
    let calories : Int
    let price : Double
    let carbs : Int
    let imageURL : String
}

struct MockData {
    static var sampleAppetizer =
    Appetizer(name: "Spicy Tuna",
              description: "A spicy tuna appetizer",
              protein: 20,
              id: 0,
              calories: 300,
              price: 12.99,
              carbs: 20,
              imageURL: "")
    
    static var sampleAppetizerOne =
    Appetizer(name: "Spicy Tuna",
              description: "A spicy tuna appetizer",
              protein: 20,
              id: 1,
              calories: 300,
              price: 12.99,
              carbs: 20,
              imageURL: "")
    static var sampleAppetizertwo =
    Appetizer(name: "Spicy Tuna",
              description: "A spicy tuna appetizer",
              protein: 20,
              id: 2,
              calories: 300,
              price: 12.99,
              carbs: 20,
              imageURL: "")
    static var sampleAppetizerthree =
    Appetizer(name: "Spicy Tuna",
              description: "A spicy tuna appetizer",
              protein: 20,
              id: 3,
              calories: 300,
              price: 12.99,
              carbs: 20,
              imageURL: "")
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orderItems = [sampleAppetizer, sampleAppetizerOne, sampleAppetizertwo, sampleAppetizerthree]
}

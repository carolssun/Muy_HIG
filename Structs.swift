//
//  Structs.swift
//  muy_cbl3_grupo11
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI




//
//struct Structs: View {
//    
//    @State var foodOptions = [
//        Food (id: 1 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 2 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 3 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 4 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 5 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 6 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 7 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 8 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        Food (id: 9 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
//        
//    ]
//    
//    @State var newFood = [
//        NewFood (id: 1, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        NewFood (id: 2, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        NewFood (id: 3, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        NewFood (id: 4, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        NewFood (id: 5, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        NewFood (id: 6, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        NewFood (id: 7, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        NewFood (id: 8, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
//        
//    ]
//    
//    @State var bannerAd = [
//        Banner (id:1, imageName: "bannerAd1"),
//        Banner (id:2, imageName: "bannerAd2"),
//        Banner (id:3, imageName: "bannerAd1"),
//        Banner (id:4, imageName: "bannerAd2"),
//    ]
//    
//    @State var dessert = [
//        NewFood (id: 1, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        NewFood (id: 2, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        NewFood (id: 3, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        NewFood (id: 4, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        NewFood (id: 5, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        NewFood (id: 6, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        NewFood (id: 7, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        NewFood (id: 8, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
//        
//    ]
//    
//    @State var appetisers = [
//        NewFood (id: 1, name: "Batata rúsica", price: "R$ 30,00", imageName: "batata" ),
//        NewFood (id: 2, name: "Chilli skin", price: "R$ 30,00", imageName: "skin" ),
//        NewFood (id: 3, name: "Batata rúsica", price: "R$ 30,00", imageName: "batata" ),
//        NewFood (id: 4, name: "Chilli skin", price: "R$ 30,00", imageName: "skin" ),
//        NewFood (id: 5, name: "Batata rúsica", price: "R$ 30,00", imageName: "batata" ),
//        NewFood (id: 6, name: "Chilli skin", price: "R$ 30,00", imageName: "skin" ),
//    ]
//    
//    
//    @State var drinksAlcohol = [
//        NewFood (id: 1, name: "Mojito", price: "R$ 30,00", imageName: "mojito" ),
//        NewFood (id: 2, name: "Piña colada", price: "R$ 30,00", imageName: "pinaColada" ),
//        NewFood (id: 3, name: "Mojito", price: "R$ 30,00", imageName: "mojito" ),
//        NewFood (id: 4, name: "Piña colada", price: "R$ 30,00", imageName: "pinaColada" ),
//        NewFood (id: 5, name: "Mojito", price: "R$ 30,00", imageName: "mojito" ),
//        NewFood (id: 6, name: "Piña colada", price: "R$ 30,00", imageName: "pinaColada" ),
//    ]
//
//    @State var drinks = [
//        NewFood (id: 1, name: "Coca-cola", price: "R$ 30,00", imageName: "cocaCola" ),
//        NewFood (id: 2, name: "Fanta Uva", price: "R$ 30,00", imageName: "fantaUva" ),
//        NewFood (id: 3, name: "Coca-cola", price: "R$ 30,00", imageName: "cocaCola" ),
//        NewFood (id: 4, name: "Fanta Uva", price: "R$ 30,00", imageName: "fantaUva" ),
//        NewFood (id: 5, name: "Coca-cola", price: "R$ 30,00", imageName: "cocaCola" ),
//        NewFood (id: 6, name: "Fanta Uva", price: "R$ 30,00", imageName: "fantaUva" ),
//    ]
//    
//    @State var sauces = [
//        NewFood (id: 1, name: "Nacho com Salsa", price: "R$ 10,00", imageName: "salsa" ),
//        NewFood (id: 2, name: "Nacho com Sour cream", price: "R$ 10,00", imageName: "sourCream" ),
//        NewFood (id: 3, name: "Nacho com Guacamole", price: "R$ 10,00", imageName: "guacamole" ),
//        NewFood (id: 4, name: "Nacho com Salsa", price: "R$ 10,00", imageName: "salsa" ),
//        NewFood (id: 5, name: "Nacho com Sour cream", price: "R$ 10,00", imageName: "sourCream" ),
//        NewFood (id: 6, name: "Nacho com Guacamole", price: "R$ 10,00", imageName: "guacamole" ),
//
//    ]
//    
//    @State var salads = [
//        NewFood (id: 1, name: "Salada ceaser", price: "R$ 30,00", imageName: "ceaser" ),
//        NewFood (id: 2, name: "Salada na Tortilla", price: "R$ 30,00", imageName: "tortillaSalad" ),
//        NewFood (id: 3, name: "Salada ceaser", price: "R$ 30,00", imageName: "ceaser" ),
//        NewFood (id: 4, name: "Salada na Tortilla", price: "R$ 30,00", imageName: "tortillaSalad" ),
//        NewFood (id: 5, name: "Salada ceaser", price: "R$ 30,00", imageName: "ceaser" ),
//        NewFood (id: 6, name: "Salada na Tortilla", price: "R$ 30,00", imageName: "tortillaSalad" ),
//
//    ]
//
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

//#Preview {
//    Structs()
//}

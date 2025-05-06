//
//  HorizontalView.swift
//  muy_cbl3_grupo11
//
//  Created by Aluno Mack on 16/04/25.
//

import SwiftUI

struct Food: Identifiable {
    var id: Int
    let name: String
    let description: String
    let price: String
    let imageName: String
}

struct NewFood: Identifiable {
    var id: Int
    let name: String
    let price: String
    let imageName: String
}

struct Banner: Identifiable {
    var id: Int
    let imageName: String
}

struct HorizontalView: View {
    
    let rows = [
        GridItem(.fixed(32)),
        GridItem(.fixed(32)),
        GridItem(.fixed(32)),
        GridItem(.fixed(32))
    ]
    
    let newRows = [
        GridItem(.fixed(32))
    ]
    
    @State var Flyer = [
        Banner (id:1, imageName: "Flyer1"),
        Banner (id:2, imageName: "Flyer2"),
        Banner (id:3, imageName: "Flyer3"),
        Banner (id:4, imageName: "Flyer1"),
        Banner (id:5, imageName: "Flyer2"),
        Banner (id:6, imageName: "Flyer3"),
    ]
    
    @State var foodOptions = [
        Food (id: 1 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 2 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 3 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 4 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 5 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 6 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 7 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 8 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
        Food (id: 9 , name: "Burrito Angus Mex", description: "suculentas tiras de angus", price: "R$ 60,00", imageName: "burritoAngus" ),
    ]
    
    @State var newFood = [
        NewFood (id: 1, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        NewFood (id: 2, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        NewFood (id: 3, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        NewFood (id: 4, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        NewFood (id: 5, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        NewFood (id: 6, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        NewFood (id: 7, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        NewFood (id: 8, name: "Enchilada de pollo", price: "R$ 59,90", imageName: "enchiladaFrango" ),
        
    ]
    
    @State var bannerAd = [
        Banner (id:1, imageName: "bannerAd1"),
        Banner (id:2, imageName: "bannerAd2"),
        Banner (id:3, imageName: "bannerAd1"),
        Banner (id:4, imageName: "bannerAd2"),
    ]
    
    @State var dessert = [
        NewFood (id: 1, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        NewFood (id: 2, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        NewFood (id: 3, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        NewFood (id: 4, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        NewFood (id: 5, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        NewFood (id: 6, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        NewFood (id: 7, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        NewFood (id: 8, name: "Churros com sorvete", price: "R$ 30,00", imageName: "churros" ),
        
    ]
    
    @State var appetisers = [
        NewFood (id: 1, name: "Batata rúsica", price: "R$ 30,00", imageName: "batata" ),
        NewFood (id: 2, name: "Chilli skin", price: "R$ 30,00", imageName: "skin" ),
        NewFood (id: 3, name: "Batata rúsica", price: "R$ 30,00", imageName: "batata" ),
        NewFood (id: 4, name: "Chilli skin", price: "R$ 30,00", imageName: "skin" ),
        NewFood (id: 5, name: "Batata rúsica", price: "R$ 30,00", imageName: "batata" ),
        NewFood (id: 6, name: "Chilli skin", price: "R$ 30,00", imageName: "skin" ),
    ]
    
    
    @State var drinksAlcohol = [
        NewFood (id: 1, name: "Mojito", price: "R$ 30,00", imageName: "mojito" ),
        NewFood (id: 2, name: "Piña colada", price: "R$ 30,00", imageName: "pinaColada" ),
        NewFood (id: 3, name: "Mojito", price: "R$ 30,00", imageName: "mojito" ),
        NewFood (id: 4, name: "Piña colada", price: "R$ 30,00", imageName: "pinaColada" ),
        NewFood (id: 5, name: "Mojito", price: "R$ 30,00", imageName: "mojito" ),
        NewFood (id: 6, name: "Piña colada", price: "R$ 30,00", imageName: "pinaColada" ),
    ]
    
    @State var drinks = [
        NewFood (id: 1, name: "Coca-cola", price: "R$ 30,00", imageName: "cocaCola" ),
        NewFood (id: 2, name: "Fanta Uva", price: "R$ 30,00", imageName: "fantaUva" ),
        NewFood (id: 3, name: "Coca-cola", price: "R$ 30,00", imageName: "cocaCola" ),
        NewFood (id: 4, name: "Fanta Uva", price: "R$ 30,00", imageName: "fantaUva" ),
        NewFood (id: 5, name: "Coca-cola", price: "R$ 30,00", imageName: "cocaCola" ),
        NewFood (id: 6, name: "Fanta Uva", price: "R$ 30,00", imageName: "fantaUva" ),
    ]
    
    @State var sauces = [
        NewFood (id: 1, name: "Nacho com Salsa", price: "R$ 10,00", imageName: "salsa" ),
        NewFood (id: 2, name: "Nacho com Sour cream", price: "R$ 10,00", imageName: "sourCream" ),
        NewFood (id: 3, name: "Nacho com Guacamole", price: "R$ 10,00", imageName: "guacamole" ),
        NewFood (id: 4, name: "Nacho com Salsa", price: "R$ 10,00", imageName: "salsa" ),
        NewFood (id: 5, name: "Nacho com Sour cream", price: "R$ 10,00", imageName: "sourCream" ),
        NewFood (id: 6, name: "Nacho com Guacamole", price: "R$ 10,00", imageName: "guacamole" ),
        
    ]
    
    @State var salads = [
        NewFood (id: 1, name: "Salada ceaser", price: "R$ 30,00", imageName: "ceaser" ),
        NewFood (id: 2, name: "Salada na Tortilla", price: "R$ 30,00", imageName: "tortillaSalad" ),
        NewFood (id: 3, name: "Salada ceaser", price: "R$ 30,00", imageName: "ceaser" ),
        NewFood (id: 4, name: "Salada na Tortilla", price: "R$ 30,00", imageName: "tortillaSalad" ),
        NewFood (id: 5, name: "Salada ceaser", price: "R$ 30,00", imageName: "ceaser" ),
        NewFood (id: 6, name: "Salada na Tortilla", price: "R$ 30,00", imageName: "tortillaSalad" ),
        
    ]
    
    var body: some View {
        ScrollView{
            VStack{
                Section{
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 5) {
                            ForEach(Flyer){ banner in
                                Button{
                                    print(" ")
                                } label: {
                                    Image(banner.imageName)
                                        .resizable()
                                        .frame(width: 250, height: 100)
                                        .aspectRatio(contentMode: .fill)
                                    // .padding(1)
                                }
                            }
                        }
                        .padding(.horizontal, 5)
                    }
                }
                Divider()
                Section {
                    HStack {
                        Text("Novidades")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    HStack{
                        ScrollView(.horizontal,showsIndicators: false) {
                            
                            LazyHGrid(rows: newRows){
                                ForEach(newFood){ food in
                                    VStack{
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        Text(food.name)
                                            .frame(width: 70)
                                            .font(.system(size: 10))
                                        Text(food.price)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 8))
                                    }
                                }
                                
                            }
                            
                        }
                        .padding(.horizontal)
                    }
                }
                
                Divider()
                Section {
                    HStack {
                        Text("Últimos pedidos")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    ScrollView(.horizontal,showsIndicators: false) {
                        
                        LazyHGrid(rows: rows){
                            ForEach(foodOptions){ food in
                                
                                HStack{
                                    Button{
                                    }label: {
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 60, height: 50)
                                        VStack(alignment:.leading){
                                            Text(food.name)
                                                .font(.system(size: 10))
                                                .foregroundStyle(.black)
                                            Text(food.description)
                                                .foregroundStyle(.gray)
                                                .font(.system(size: 8))
                                        }
                                    }
                                    .padding(.horizontal)
                                    
                                    Button{
                                    } label:{
                                        Text(food.price)
                                            .font(.system(size: 12))
                                            .padding(5)
                                            .accentColor(.verdeEscuro)
                                            .frame(width: 63, height: 20)
                                        
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 3)
                                                    .stroke(.verdeEscuro, lineWidth: 1)
                                            )
                                    }
                                    .padding(.horizontal, 25)
                                }
                            }
                        }
                    }
                }
                
                Divider()
                Section{
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        LazyHGrid(rows: newRows){
                            ForEach(bannerAd){ banner in
                                
                                VStack{
                                    Button{
                                        print(" ")
                                    } label: {
                                        Image(banner.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 150, height: 70)
                                            .padding(1)
                                    }
                                }
                                .padding(.leading)
                            }
                        }
                    }
                }
                Divider()
                Section {
                    HStack {
                        Text("Sobremesas")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    
                    HStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                            
                            LazyHGrid(rows: newRows){
                                ForEach(dessert){ food in
                                    VStack{
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        Text(food.name)
                                            .frame(width: 70)
                                            .font(.system(size: 10))
                                        Text(food.price)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 8))
                                    }
                                    //.padding(.horizontal, 5)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                Divider()
                
                Section{
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        LazyHGrid(rows: newRows){
                            ForEach(bannerAd){ banner in
                                VStack{
                                    Button{
                                        print(" ")
                                    } label: {
                                        Image(banner.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 150, height: 70)
                                            .padding(1)
                                    }
                                }
                                .padding(.leading)
                            }
                        }
                    }
                }
                Divider()
                Section {
                    HStack {
                        Text("Aperitivos")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    
                    HStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                            
                            LazyHGrid(rows: newRows){
                                ForEach(appetisers){ food in
                                    VStack{
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        Text(food.name)
                                            .frame(width: 70)
                                            .font(.system(size: 10))
                                        Text(food.price)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 8))
                                        
                                    }
                                    //.padding(.horizontal, 5)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                Divider()
                Section {
                    HStack {
                        Text("Bebidas Alcoólicas")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    
                    HStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                            
                            LazyHGrid(rows: newRows){
                                ForEach(drinksAlcohol){ food in
                                    VStack{
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        Text(food.name)
                                            .frame(width: 70)
                                            .font(.system(size: 10))
                                        Text(food.price)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 8))
                                    }
                                    //.padding(.horizontal, 5)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                Divider()
                Section {
                    HStack {
                        Text("Bebidas não alcoólicas")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    
                    HStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                            
                            LazyHGrid(rows: newRows){
                                ForEach(drinks){ food in
                                    VStack{
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        Text(food.name)
                                            .frame(width: 70)
                                            .font(.system(size: 10))
                                        Text(food.price)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 8))
                                    }
                                    //.padding(.horizontal, 5)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
                Divider()
                Section {
                    HStack {
                        Text("Molhos caseiros")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    
                    HStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                            
                            LazyHGrid(rows: newRows){
                                ForEach(sauces){ food in
                                    VStack{
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        Text(food.name)
                                            .frame(width: 70)
                                            .font(.system(size: 10))
                                        
                                        Text(food.price)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 8))
                                    }
                                    //.padding(.horizontal, 5)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
                Divider()
                Section {
                    HStack {
                        Text("Saladas")
                            .padding(.horizontal)
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack {
                            Text("Ver mais")
                                .font(.system(size: 10))
                                .foregroundStyle(.gray)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 7))
                                .foregroundStyle(.gray)
                            //Spacer()
                        } .padding(.horizontal)
                    }
                    
                    HStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                            
                            LazyHGrid(rows: newRows){
                                ForEach(salads){ food in
                                    VStack{
                                        Image(food.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        Text(food.name)
                                            .frame(width: 70)
                                            .font(.system(size: 10))
                                        
                                        Text(food.price)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 8))
                                    }
                                    //.padding(.horizontal, 5)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                Divider()
                Section{
                    VStack(spacing: 10){
                        HStack{
                            Text("Links Rápidos")
                                .padding(.horizontal)
                                .font(.system(size: 15))
                            Spacer()
                        }
                        Divider()
                        Button {
                            
                        }label:{Text("Comunidade")
                                .font(.system(size: 15))
                        }
                        Divider()
                        Button {
                            
                        }label:{Text("Avaliar")
                                .font(.system(size: 15))
                        }
                        Divider()
                        Button {
                            
                        }label:{Text("Fidelidade")
                                .font(.system(size: 15))
                        }
                        Divider()
                        Button {
                            
                        }label:{Text("Doações")
                                .font(.system(size: 15))
                        }
                        Divider()
                        Button {
                            
                        }label:{Text("Entre em contato conosco")
                                .font(.system(size: 15))
                        }
                        Divider()
                        Button {
                            
                        }label:{Text("Sobre nós")
                                .font(.system(size: 15))
                        }
                        Divider()
                        Button {}label:{
                            ZStack{
                                Text("Ajuda")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 12))
                                    .padding(5)
                                    .frame(width:370)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 1)
                                    )
                            }
                        }
                        Button {}label:{
                            ZStack{
                                Text("Configurações")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 12))
                                    .padding(5)
                                    .frame(width:370)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 1)
                                    )
                            }
                        }
                        Button {}label:{
                            HStack(alignment:.center){
                                Text("Políticas de devolução")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 10))
                                    .padding(.vertical,5)
                                //.border(.black)
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 7))
                                    .foregroundStyle(.gray)
                                //.border(.black)
                            }//.border(.red)
                            
                        }
                    }
                }.accentColor(.verdeEscuro)
            }
        }
    }
}
#Preview {
    HorizontalView()
}

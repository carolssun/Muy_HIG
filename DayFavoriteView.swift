//
//  FDayFavorites.swift
//  muy_cbl3_grupo11
//
//  Created by Aluno Mack on 16/04/25.
//

import SwiftUI

struct DayFavoriteView: View {
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
        Banner (id:1, imageName: "Flyer1"),
        Banner (id:2, imageName: "Flyer2"),
        Banner (id:3, imageName: "Flyer3"),
    ]
    
    @State var bannerAd = [
        Banner (id:1, imageName: "bannerAd1"),
        Banner (id:2, imageName: "bannerAd2"),
        Banner (id:3, imageName: "bannerAd1"),
        Banner (id:4, imageName: "bannerAd1"),

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
    var body: some View {
        Divider()
        Section {
            HStack {
                Text("Pratos do dia")
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
                //.border(.red)
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
                        ForEach(foodOptions){ food in
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
        
        
    }
}

#Preview {
    DayFavoriteView()
}

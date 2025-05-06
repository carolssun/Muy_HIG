import SwiftUI

struct SearchView: View {
    @State var isOnList: [Bool] = Array(repeating: true, count: 10) // lista com 10 valores true
    @State var textSearch : String = ""
    //    let buttonsList : [String] = [ "taco de carne", "taco de frango", "salada", "suco de melancia", "mojito", "pastel", "combos", "guacamole", "churros", "burritos"]
    @State var isOn: Bool = true
    @State var isOn2: Bool = true
    @State var isOn3: Bool = true
    @State var isOn4: Bool = true
    @State var isOn5: Bool = true
    @State var isOn6: Bool = true
    @State var isOn7: Bool = true
    @State var isOn8: Bool = true
    @State var isOn9: Bool = true
    @State var isOn10: Bool = true
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                VStack(spacing: 30){
                    
                    
                    Text("Buscas recentes")
                        .font(.title2)
                        .padding(20)
                        .searchable(text: $textSearch, prompt: "buscar")
                    
                    // MARK: - FIXME
                    //                    VStack(spacing: 15) {
                    //                        ForEach(0..<isOnList.count, id: ) { index in
                    //                        Button {
                    //                            isOnList[index].toggle()
                    //                        } label: {
                    //                            ForEach(buttonsList, id: ){ index in
                    //                                Text(\(buttonsList[index]))
                    //                                index+=1
                    //                                .foregroundStyle(isOnList[index] ? .greexn : .brown)
                    //
                    //
                    //                            }
                    //
                    //                            }
                    //
                    //                        }
                    //
                    //
                    //                    }
                    //                  }
                    //
                    
                    
                    VStack(spacing: 15) {
                        
                        Button{
                            isOn.toggle()
                        } label: {
                            if isOn{
                                Text("taco de carne")
                                    .foregroundStyle(.verdeEscuro)
                                
                            } else{
                                Text("taco de carne")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        Button{
                            isOn2.toggle()
                        } label: {
                            if isOn2{
                                Text("taco de frango")
                                    .foregroundStyle(.verdeEscuro)
                                
                            } else{
                                Text("taco de frango")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        
                        Button{
                            isOn3.toggle()
                        } label: {
                            if isOn3{
                                Text("salada")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("salada")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        Button{
                            isOn4.toggle()
                        } label: {
                            if isOn4{
                                Text("suco de melancia")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("suco de melancia")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        Button{
                            isOn5.toggle()
                        } label: {
                            if isOn5{
                                Text("mojito")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("mojito")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        Button{
                            isOn6.toggle()
                        } label: {
                            if isOn6{
                                Text("pastel")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("pastel")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        Button{
                            isOn7.toggle()
                        } label: {
                            if isOn7{
                                Text("combos")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("combos")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        Button{
                            isOn8.toggle()
                        } label: {
                            if isOn8{
                                Text("guacamole")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("guacamole")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        Button{
                            isOn9.toggle()
                        } label: {
                            if isOn9{
                                Text("churros")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("churros")
                                    .foregroundStyle(.marrom)
                                
                            }
                        }
                        
                        Button{
                            isOn10.toggle()
                        } label: {
                            if isOn10{
                                Text("burrito")
                                    .foregroundStyle(.verdeEscuro)
                            } else{
                                Text("burrito")
                                    .foregroundStyle(.marrom)
                                
                            }
                            
                        }
                        
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    SearchView()
}

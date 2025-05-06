import SwiftUI




struct CartView: View {
    
    @State var foodOptions = [
        Food (id: 1, name: "Fajita de camarão", description: "Acompanha salsa, guacamole...", price: "R$ 72,00", imageName: "fajitaCamarao" ),
        Food (id: 2 , name: "Coca-cola", description: "350ml", price: "R$ 8,00", imageName: "cocaCola" ),
        Food (id: 3, name: "Fanta Uva", description: "350ml", price: "R$ 8,00", imageName: "fantaUva")
    ]
    
    @State var selectedTabs = 0
    
    var body: some View {
        HStack{
            Button("Editar"){}
                .padding(.leading)
                .foregroundColor(.verdeEscuro)
            
            Spacer()
            Button("Continuar"){}
                .padding(.trailing)
                .bold()
                .foregroundColor(.verdeEscuro)
            
            //MARK:-FIXME
            //            NavigationStack{
            //
            //            } .toolbar{
            //                ToolbarItem(placement: .navigationBarLeading){
            //                    EditButton()
            //                }
            //                ToolbarItem(placement: .navigationBarTrailing){
            //                    if editMode? .wrappedValue == .active{
            //                        Button("Continuar"){
            //                            editMode? .wrappedValue == inactive
            //                        }
            //                    }
            //                }
            //            }
            
            
        }
        HStack{
            Picker( "tabs", selection: $selectedTabs){
                Text("Carrinho").tag(0)
                Text("Desejo").tag(1)
                Text("Total").tag(2)
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal)
        if selectedTabs == 0 {
            VStack{
               
                List {
                    Section(header: Text("Itens")) {
                        ForEach (foodOptions){ food in
                            HStack{
                                Image(food.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                VStack(alignment:.leading){
                                    Text(food.name)
                                        .font(.system(size: 15))
                                    
                                    Text(food.description)
                                        .font(.system(size: 10))
                                    
                                }
                                .padding()
                                Spacer()
                                
                                Button{
                                    
                                } label:{
                                    
                                    Text(food.price)
                                        .font(.system(size: 12))
                                        .padding(5)
                                        .accentColor(.verdeEscuro)
                                        .frame(width: 63, height: 25)
                                    
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 3)
                                                .stroke(.verdeEscuro, lineWidth: 1)
                                        )
                                    
                                    
                                }
                            }
                        }
                        
                    }
                    .headerProminence(.standard)
                    
                    
                    
                }

            }
        }
        else {
            Spacer()
            Text("Adicione coisas aqui!")
            Spacer()
        }
    }
}

#Preview {
    CartView()
}

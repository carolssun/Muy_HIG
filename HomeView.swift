import SwiftUI

struct HomeView: View {
    @State var isShowing: Bool = false
    @State var cartSymbol = Image(systemName: "cart")
    @State var color = Color.verdeEscuro
    @State var selectedTabs = 0
    
    
    var body: some View {
        
        VStack(){
            HStack{
                Button("Menu"){}
                    .padding(.leading)
                    .foregroundColor(.verdeEscuro)
                
                Spacer()
                
                
                Picker( "tabs", selection: $selectedTabs){
                    Text("Destaque").tag(0)
                    Text("Favoritos").tag(1)
                }
                .frame(width: 150)
                Spacer()
                
                
                Button("\(cartSymbol)"){
                    isShowing.toggle()
                }
                .foregroundColor(.verdeEscuro)
                .sheet(isPresented: $isShowing){
                    CartView()
                        .presentationDetents([.large])
                }
                
                .padding(.trailing)
                
                
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            if selectedTabs == 0 {
                Section{
                    HorizontalView()
                }
            }else{
                DayFavoriteView()
            }
        }
    }
}

#Preview {
    HomeView()
}

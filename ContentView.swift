import SwiftUI

struct ContentView: View {
    @State var isOn: Bool = false
    
    //func exibirTabBar(TabView)
    
    var body: some View {
        ZStack {
            
            TabView{
                HomeView()
                    .tabItem {
                        Text("Início")
                        Image(systemName: "house.fill")
                    }

                VeganView()
                    .tabItem{
                        Text("Vegano")
                        Image(systemName: "leaf.arrow.circlepath")
                    }
                SearchView()
                    .tabItem {
                        Text("buscar")
                        Image(systemName: "magnifyingglass")
                    }
                FavoriteView()
                    .tabItem{
                        Text("Favoritos")
                        Image(systemName: "heart")
                    }
                ProfileView()
                    .tabItem{
                        Text("Perfil")
                        Image(systemName: "person.circle")
                    }
            }
            .accentColor(.verdeEscuro)
        }
    }
}
    #Preview{
        ContentView()
    }


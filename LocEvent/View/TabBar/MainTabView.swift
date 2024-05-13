import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreEvent()
                .tabItem { Label("Explore" , systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishtlist" , systemImage: "heart") }
            
            Profil()
                .tabItem { Label("Profile" , systemImage: "person") }
            
            
        }
                
    }
}

#Preview {
    MainTabView()
}

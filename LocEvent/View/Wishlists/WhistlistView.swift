import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading,spacing: 32){
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Log in to check your whistlist")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("You can remind your wishlistugghgbhhb  uu  uuuu  uubbubub")
                        .font(.footnote)
                        .fontWeight(.thin)
                }
                //            untuk halaman login
                Button{
                    print("login")
                }label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                }
                Spacer()
                
            }
            .padding()
            .navigationBarTitle("Wishlist", displayMode: .inline)
            
            
        }
                
    }
}

#Preview {
    WishlistView()
}


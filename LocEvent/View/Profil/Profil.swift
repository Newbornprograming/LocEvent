import SwiftUI

struct ProfilCoba: View {
    var body: some View {
        
        NavigationStack(){
            VStack(alignment: .center,spacing: 32){
                VStack {
                    Image("listing-7")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
//                manampilkan jika belom login
                //                VStack(alignment: .leading, spacing: 4){
                //                    Text("Log in to check your history event")
                //                        .font(.headline)
                //
                //                    Text("You can remind your wishlistugghgbhhb  uu  uuuu  uubbubub")
                //                        .font(.footnote)
                //                }
                //                //            untuk halaman login
                //                Button{
                //                    print("login")
                //                }label: {
                //                    Text("Login")
                //                        .foregroundStyle(.white)
                //                        .font(.subheadline)
                //                        .fontWeight(.semibold)
                //                        .frame(width: 360, height: 48)
                //                        .background(.blue)
                //                        .clipShape(RoundedRectangle(cornerRadius: 8))
                //
                //                }
                VStack{
                    Text("Mr. Golek")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                    Text("mistergolek@gmail.com")
                        .font(.caption)
                        .fontWeight(.thin)
                }
                .foregroundColor(.black)
                .foregroundStyle(.black)
                
                HStack{
                    Spacer()
//                    wishlist event
                    VStack{
                        Text("5")
                            .foregroundStyle(.blue)
                        Text("Wishlist Event")
                            .font(.subheadline)
                    }
//                  garis pemisah
                    Spacer()
                    Rectangle()
                            .frame(width: 1, height: 40) // Ubah lebar sesuai kebutuhan
                            .foregroundColor(.gray) // Sesuaikan warna dengan kebutuhan
                   Spacer()
//                    incoming event
                    VStack{
                        Text("5")
                            .foregroundStyle(.blue)
                        Text("Incoming Event")
                            
                    }
                    Spacer()
                }
                .fontWeight(.semibold)
                .font(.subheadline)
                .modifier(CollapseibleDestinationViewModifier())
                .frame(height: 40)
                .padding(.vertical)
                
//                edit profile
                NavigationLink(destination: EditProfile()) {
                    CollapseView(title: "Edit Profile", imageName: "info.square.fill")
                        .modifier(CollapseibleDestinationViewModifier())
                        .frame(height: 40)
                                }
                .foregroundColor(.black)
                
//                about
                
                NavigationLink(destination: AboutView()) {
                    CollapseView(title: "About", imageName: "info.circle.fill")
                        .modifier(CollapseibleDestinationViewModifier())
                        .frame(height: 40)
                                }
                .foregroundColor(.black)
                    
                
//                logouut
                CollapseView(title: "Logout", imageName: "chevron.right.square.fill")
                    .modifier(CollapseibleDestinationViewModifier())
                    .frame(height: 40)
                
                Spacer()
                
            }
            .padding()
            .navigationBarTitle("Profile", displayMode: .inline)
            
            
            
            
        }
    }
}

#Preview {
      Profil()
//    Coba()
//    Final()
}

//unruk menampilkan kotak an picker sebelum d klik
struct CollapseView: View {
    let title: String
    let imageName: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                Spacer()
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }

    }
}

//menyederhanakan css supaya rtidak mengetika banyak styling
struct CollapseibleProfileViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
}

struct Profil:View {
    var body: some View {
        NavigationStack{
            ZStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 45.0)
                                .fill(.white)
                                .padding(.top, 170)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea()
                        .background(
                            Gradient(colors: [.blue, .black, .black])
                        )
                        VStack{
                            Image(systemName: "globe")
                                .font(.system(size: 100))
                                .frame(width: 130, height: 140)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .padding(.top, 40)
                            Spacer()
                        }
                        
                        VStack(alignment: .center,spacing: 32){
                            VStack {
                                Image("listing-8")
                                    .font(.system(size: 100))
                                    .frame(width: 120, height: 120)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 17))
                                .padding(.top, 45)
                                Text("Mr. Golek")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    
                                Text("mistergolek@gmail.com")
                                    .font(.caption)
                                    .fontWeight(.thin)
                            }
                            
                            HStack{
                                Spacer()
            //                    wishlist event
                                VStack{
                                    Text("5")
                                        .foregroundStyle(.blue)
                                    Text("Wishlist Event")
                                        .font(.subheadline)
                                }
            //                  garis pemisah
                                Spacer()
                                Rectangle()
                                        .frame(width: 1, height: 40) // Ubah lebar sesuai kebutuhan
                                        .foregroundColor(.gray) // Sesuaikan warna dengan kebutuhan
                               Spacer()
            //                    incoming event
                                VStack{
                                    Text("5")
                                        .foregroundStyle(.blue)
                                    Text("Incoming Event")
                                        
                                }
                                Spacer()
                            }
                            .fontWeight(.semibold)
                            .font(.subheadline)
                            .modifier(CollapseibleDestinationViewModifier())
                            .frame(height: 40)
                            .padding(.vertical)
                            
            //                edit profile
                            NavigationLink(destination: EditProfile()) {
                                CollapseView(title: "Edit Profile", imageName: "info.square.fill")
                                    .modifier(CollapseibleDestinationViewModifier())
                                    .frame(height: 40)
                                            }
                            .foregroundColor(.black)
                            
            //                about
                            
                            NavigationLink(destination: AboutView()) {
                                CollapseView(title: "About", imageName: "info.circle.fill")
                                    .modifier(CollapseibleDestinationViewModifier())
                                    .frame(height: 40)
                                            }
                            .foregroundColor(.black)
                                
                            
            //                logouut
                            CollapseView(title: "Logout", imageName: "chevron.right.square.fill")
                                .modifier(CollapseibleDestinationViewModifier())
                                .frame(height: 40)
                          
                            Spacer()
                        }
                        
                
            }
        }
        .navigationBarTitle("Profile", displayMode: .inline)
        
        
        
        
        
    }
}

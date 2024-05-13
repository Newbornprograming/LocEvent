import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        
        ZStack {
            
            VStack {
                           Rectangle()
                                .fill(.white)
                                .padding(.top, 125)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .background(
                Gradient(colors: [.blue, .black, .black])
            )
            
            Button{
                dismiss()
                
            }label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .background{
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                    }
                    .padding(.vertical, -340)
                    .padding(.horizontal, -180)
            }
            
            VStack {
                
                VStack(alignment: .leading, spacing: 32){
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("About")
                            .font(.title3)
                            .fontWeight(.semibold)
                
                    }
                    
                }
                //         profile option
                VStack(spacing:24){
                                       ProfileOptionRowView(imageName: "gear", title: "Privacy policy")
                                       ProfileOptionRowView(imageName: "gear", title: "Theme")
                                       ProfileOptionRowView(imageName: "questionmark.circle", title: "App Version")
                }
                .padding(.vertical)
                .padding(.horizontal)
                .padding(.top, 0)
                Spacer()

                

            }
            .padding(.top, -10)
            
            
        }
        .navigationBarBackButtonHidden(false)

    }
}

#Preview {
    AboutView()
    
}



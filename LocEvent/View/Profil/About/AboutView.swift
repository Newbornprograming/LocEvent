import SwiftUI

struct AboutView: View {
    var body: some View {
//        profile login view
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

            

        }
        .padding()
        Spacer()

    }
}

#Preview {
    AboutView()
}

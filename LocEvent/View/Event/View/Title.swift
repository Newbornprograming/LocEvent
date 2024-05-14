import SwiftUI

struct Title: View {
    var body: some View {
        HStack{
                        Text("Nearest Event")
                        Image(systemName: "mappin.and.ellipse")
                        Text("Surabaya")
                    }
                    .fontWeight(.semibold)

    }
}

#Preview {
    Title()
}

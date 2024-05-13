import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    var body: some View {
        VStack{
            Button{
                show.toggle()
            }label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundColor(.black)
            }
            Text("Mau ke event apa?")
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

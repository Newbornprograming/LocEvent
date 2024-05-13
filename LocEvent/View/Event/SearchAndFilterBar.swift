import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                
                HStack{
                    Image(systemName: "magnifyingglass")
                    Text("Find your favourite event")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 2)
                .overlay {
                    Capsule()
                        .stroke(lineWidth: 0.5)
                        .foregroundStyle(
                            Color(.systemGray))
                        .shadow(
                            color: .black.opacity(0.4)
                            ,radius :2
                        )
                }
//            button filter
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                  Image(systemName: "line.3.horizontal.decrease.circle")
                        .foregroundColor(.black)
                })
                
            }
            
           
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        
        
        
        
        
        
        
        
    }
}

#Preview {
    SearchAndFilterBar()
}

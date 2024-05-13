

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3"
    ]
    var body: some View {
       
        TabView{
            ForEach(images, id: \.self){
                image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
//            listing details
    
    }
}

#Preview {
    ListingImageCarouselView()
}

//
//  ListingView.swift
//  LocEvent
//
//  Created by MacBook Air on 10/05/24.
//

import SwiftUI

struct ListingItemView:  View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
//         images
//            untuk membuat galery image
                ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        //            mengambil per page
//            listing details
            HStack(alignment: .top){
//                details
                VStack(alignment: .leading) {
                    Text("Title")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Location")
                    
                    Text("Date and time")
                        .foregroundStyle(.red)
                    HStack(spacing: 4) {
                        Text("Distance")
                            .foregroundStyle(.gray)
                        Text("Km")
                            .foregroundStyle(.gray)
                        
                    }
                    
                    
                }
                Spacer()
//                price
                HStack(spacing: 2){
                    Text(" Rp. ")
        
                    Text("xx,xxx ")
                }
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            }
//            .background(.red)
            .font(.footnote)
        }
        
    }
}

#Preview {
    ListingItemView()
}

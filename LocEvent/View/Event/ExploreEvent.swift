//
//  ExploreView.swift
//  LocEvent
//
//  Created by MacBook Air on 08/05/24.
//

import SwiftUI

struct ExploreEvent: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
            }else{
                VStack{
    //                bagian fixed
                    Title()
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
    //                bagian scrolling
                    ScrollView{
                        
                        
                        LazyVStack(spacing:32){
                            
                                ForEach(0 ... 10, id: \.self){ listing in
                                    NavigationLink(value: listing){
                                        ListingItemView()
                                            .foregroundColor(.black)
                                            .frame(height: 400)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                    }
                                    
                                }
                            
                            
                        }
                        .padding()
                        
                    }
                    .navigationDestination(for: Int.self) { listing in
                        ListingDetailView()
                            .navigationBarBackButtonHidden()
                    }
                    
                    
                }
            }
            
            
        }
    }
}

#Preview {
    ExploreEvent()
}

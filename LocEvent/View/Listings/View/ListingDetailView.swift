import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ScrollView{
            ZStack(alignment : .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                
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
                        .padding(32)
                }
            }
                
            VStack{
                HStack{
                    //  Title
                    VStack(alignment: .leading, spacing: 8){
                        Text("Sharing UI/UX")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                        //                    details
                        VStack(alignment: .leading){
                            //                        tanggal
                            HStack{
                                Image(systemName: "calendar")
                                
                                HStack(spacing: 2){
                                    Text("Mon, 20.00 PM")
                                }
                                
                            }.padding(.vertical, 2)
                            //                        lokasi
                            HStack{
                                Image(systemName: "mappin.and.ellipse")
                                
                                HStack(spacing: 2){
                                    Text("Di jalan Made")
                                }
                                
                            }.padding(.vertical, 2)
                            //                        harga
                            HStack{
                                Image(systemName: "dollarsign.circle")
                                    .foregroundColor(.red)
                                HStack(spacing: 2){
                                    Text(" Free ")
                                    
                                    
                                }
                                .background(.red)
                                .foregroundColor(.white)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                
                            }.padding(.vertical, 2)
                            //                        jarak
                            Text("2.3 Km")
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.leading)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    VStack{
                        Image(systemName: "heart")
                            .font(.system(size: 30))
                        Spacer()
                    }.padding(.trailing)
                    
                }
                //                deskripsi
                VStack(alignment : .leading, spacing: 8){
                    Text("Description ")
                        .fontWeight(.semibold)
                    Text("Dalam sesi ini, Kak Ija akan memandu Anda melalui landasan fundamental UI/UX, menyoroti pentingnya desain yang intuitif dan menarik bagi pengguna. Dengan wawasan mendalamnya, Kak Ija akan membagikan strategi terbaik dalam merancang antarmuka yang memikat dan pengalaman pengguna yang memuaskan. Dari prinsip desain dasar hingga tren terkini dalam industri, Kak Ija akan menjelajahi setiap aspek dari UI/UX, menyoroti pentingnya pemahaman mendalam tentang pengguna dan tujuan produk. Anda akan belajar tentang teknik perancangan yang efektif, metodologi pengujian pengguna, dan praktik terbaik untuk meningkatkan interaksi dan keterlibatan pengguna.")
                    
                }
                .padding()
                
                Divider()
//                maps
                VStack(alignment: .leading, spacing: 16){
                    Text("Lihat di maps")
                        .fontWeight(.semibold)
                    
                    Map()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                .padding()
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        Text("Contact to reservasi")
                    }
                    Spacer()
                    Button{
                        
                    } label: {
                        Text("Get Contact")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
            
            
            
        }
    }
}

#Preview {
    ListingDetailView()
}

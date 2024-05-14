import SwiftUI

enum DestinationSearchOption{
    case location
    case dates
    case categorized
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOption = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    enum Categorized: String, CaseIterable, Identifiable {
        case music, sport, education
        
        var id: String { self.rawValue }
    }



    @State private var selectedCategorized: Categorized = .music
//    @State private var locationSelected = false
//    @State private var dateSelected = false
//    @State private var categorySelected = false
    
    
    var body: some View {
        VStack{
            HStack{
//                tombol close
                Button{
                    withAnimation(.snappy){
                        show.toggle()
                    }
                }label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                Spacer()
//                tombol buat clear isian
                if !destination.isEmpty{
                    Button("Clear"){
                        destination=""
                        
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment: .leading){
                if selectedOption == .location{
                    Text("Mau cari event apa?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Cari event favourite di sekitarmu", text:  $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(.systemGray4))
                    }
                } else {
                    CollapsePickerView(title: "Event", description: "Cari Event")
                }
                
            }
            .modifier(CollapseibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            
//          genre event apa
            VStack(alignment: .leading){
                if selectedOption == .categorized {
                    
                    Text("Pilih Kategori apa?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Text("Kategori")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Picker("Kategori", selection: $selectedCategorized) {
                            Text("Music").tag(Categorized.music)
                            Text("Sport").tag(Categorized.sport)
                            Text("Education").tag(Categorized.education)
                        }
                        .foregroundColor(.black) // Mengubah warna teks pilihan menjadi hitam

                        
                    }
                    
                        
                                        
                } else {
                    CollapsePickerView(title: "Kategori", description: "Pilih Kategori")
                }
            }
            .modifier(CollapseibleDestinationViewModifier())
            .frame(height: selectedOption == .categorized ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .categorized
                }
            }
            
            Spacer()
            
            //            date selection view
            
            //            VStack(alignment: .leading){
            //                if selectedOption == .dates {
            //
            //                        Text("Pilih Tanggal Berapa ?")
            //                            .font(.title2)
            //                            .fontWeight(.semibold)
            //
            //                        VStack{
            //                            DatePicker("From", selection: $startDate, displayedComponents: .date)
            //
            //                            Divider()
            //
            //                            DatePicker("To", selection: $endDate, displayedComponents: .date)
            //                        }
            //                        .foregroundColor(.gray)
            //                        .font(.subheadline)
            //                        .fontWeight(.semibold)
            //
            //                } else {
            //                    CollapsePickerView(title: "Kapan", description: "Pilih Tanggal")
            //                }
            //            }
            //            .modifier(CollapseibleDestinationViewModifier())
            //            .frame(height: selectedOption == .dates ? 180 : 64)
            //            .onTapGesture {
            //                withAnimation(.snappy) {
            //                    selectedOption = .dates
            //                }
            //            }
                        VStack(alignment: .leading){
            //                if selectedOption == .dates {
                                
                                    Text("Pilih Tanggal Berapa ?")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                    
                                    VStack{
                                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                                        
                                        Divider()
                                        
                                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                                    }
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
            //                } else {
            //                    CollapsePickerView(title: "Kapan", description: "Pilih Tanggal")
            //                }
                        }
                        .modifier(CollapseibleDestinationViewModifier())
                        .frame(height: selectedOption == .dates ? 180 : 64)
            //            .onTapGesture {
            //                withAnimation(.snappy) {
            //                    selectedOption = .dates
            //                }
            //            }
            //
            
            Spacer()
            
            
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

//menyederhanakan css supaya rtidak mengetika banyak styling
struct CollapseibleDestinationViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
}
    



//unruk menampilkan kotak an picker sebelum d klik
struct CollapsePickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }

    }
}

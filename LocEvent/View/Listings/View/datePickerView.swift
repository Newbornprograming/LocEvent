//
//  datePickerView.swift
//  LocEvent
//
//  Created by MacBook Air on 13/05/24.
//

import SwiftUI

struct datePickerView: View {
    @State private var startDate = Date()
    @State private var endDate = Date()
    var body: some View {
        HStack{
            DatePicker("From", selection: $startDate, displayedComponents: .date)
        }
                   

    }
}

#Preview {
    datePickerView()
}

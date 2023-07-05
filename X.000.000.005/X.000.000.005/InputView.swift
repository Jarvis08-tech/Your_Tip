//
//  InputView.swift
//  X.000.000.005
//
//  Created by Joel Mueller on 27.10.22.
//

import SwiftUI

struct InputView: View {
    enum Field: Hashable {
        case active
        case passive
    }
    
    @Binding var value: String
    @FocusState private var focusedField: Field?
    let name: String
    
    var body: some View {
        List {
            if name == "Price" {
                TextField("", text: $value)
                    .keyboardType(.decimalPad)
                    .frame(maxWidth: 200)
                    .focused($focusedField, equals: .active)
            } else {
                TextField("", text: $value)
                    .keyboardType(.numberPad)
                    .frame(maxWidth: 200)
                    .focused($focusedField, equals: .active)
            }
            
                
        }.navigationTitle(name)
        .onAppear(perform: {
            focusedField = Field.active
        })
        .interactiveDismissDisabled()
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(value: .constant(""), name: "Price")
    }
}

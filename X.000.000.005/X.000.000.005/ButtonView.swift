//
//  ButtonView.swift
//  X.000.000.005
//
//  Created by Joel Mueller on 28.10.22.
//

import SwiftUI

struct ButtonView: View {
    let name: String
    let value: String
    
    var body: some View {
        HStack {
            Text(name)
                .bold()
                .font(.title)
            Spacer()
            Text(value)
                .bold()
                .font(.title)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(name: "", value: "")
    }
}

//
//  ContentView.swift
//  X.000.000.005
//
//  Created by Develop on 15.08.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MainScreen()
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

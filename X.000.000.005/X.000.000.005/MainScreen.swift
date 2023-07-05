//
//  MainScreen.swift
//  X.000.000.005
//
//  Created by Develop on 15.08.21.
//

import SwiftUI

struct MainScreen: View {
    @AppStorage("price") var price = ""
    @AppStorage("tip") var tip = "15"
    @AppStorage("split") var split = "1"
    @State var lastValue = ""
    @State var showPriceSheet = false
    @State var showTipSheet = false
    @State var showSplitSheet = false
    
    var body: some View {
        List {
            Section(header: Text("")) {
                Button( action: {
                    lastValue = price
                    showPriceSheet = true
                }){
                    ButtonView(name: "Price", value: roundedString(price) + "$")
                }
                Button( action: {
                    lastValue = tip
                    showTipSheet = true
                }){
                    ButtonView(name: "Tip", value: roundedStringTip(tip) + "%")
                }
                Button( action: {
                    lastValue = split
                    showSplitSheet = true
                }){
                    ButtonView(name: "Split", value: roundedStringSplit(split))
                }
                 
            }
            
            Section(header: Text("")) {
                if generalConditions(price) && generalConditions(tip) {
                    VStack {
                        HStack {
                            Text("Not Rounded").bold().font(.title)
                            Spacer()
                        }
                        HStack {
                            Text("Price:")
                            Spacer()
                            Text(roundedString(price) + "$")
                        }
                        HStack {
                            Text("Tip:")
                            Spacer()
                            Text(tipcalculation(price).tip(tip) + "$")
                        }
                        HStack {
                            Text("Total:")
                            Spacer()
                            Text(tipcalculation(price).total(tip) + "$")
                        }
                        if splitTest(split) {
                            HStack {
                                Text("Each:")
                                Spacer()
                                Text(tipcalculation(price).totalSplit(tip, split) + "$")
                            }
                        }
                    }
                }
                
                if generalConditions(price) && generalConditions(tip) {
                    VStack {
                        HStack {
                            Text("Rounded Up").bold().font(.title)
                            Spacer()
                        }
                        HStack {
                            Text("Price:")
                            Spacer()
                            Text(roundedString(price) + "$")
                        }
                        HStack {
                            Text("Tip:")
                            Spacer()
                            Text(tipcalculation(price).tipUp(tip) + "$")
                        }
                        HStack {
                            Text("Total:")
                            Spacer()
                            Text(tipcalculation(price).totalUp(tip) + "$")
                        }
                        if splitTest(split) {
                            HStack {
                                Text("Each:")
                                Spacer()
                                Text(tipcalculation(price).totalUpSplit(tip, split) + "$")
                            }
                        }
                    }
                }
                
                if generalConditions(price) && generalConditions(tip) {
                    VStack {
                        HStack {
                            Text("Rounded Down").bold().font(.title)
                            Spacer()
                        }
                        HStack {
                            Text("Price:")
                            Spacer()
                            Text(roundedString(price) + "$")
                        }
                        HStack {
                            Text("Tip:")
                            Spacer()
                            Text(tipcalculation(price).tipDown(tip) + "$")
                        }
                        HStack {
                            Text("Total:")
                            Spacer()
                            Text(tipcalculation(price).totalDown(tip) + "$")
                        }
                        if splitTest(split) {
                            HStack {
                                Text("Each:")
                                Spacer()
                                Text(tipcalculation(price).totalDownSplit(tip, split) + "$")
                            }
                        }
                    }
                }
             
             
            
            }
            
        }
        .navigationBarTitle("Your Tip")
        .sheet(isPresented: $showPriceSheet) {
            NavigationView {
                InputView(value: $price, name: "Price")
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                price = lastValue
                                lastValue = ""
                                showPriceSheet = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                lastValue = ""
                                showPriceSheet = false
                            }
                        }
                    }
            }
        }
        .sheet(isPresented: $showTipSheet) {
            NavigationView {
                InputView(value: $tip, name: "Tip")
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                tip = lastValue
                                lastValue = ""
                                showTipSheet = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                lastValue = ""
                                showTipSheet = false
                            }
                        }
                    }
            }
        }
        .sheet(isPresented: $showSplitSheet) {
            NavigationView {
                InputView(value: $split, name: "Split")
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                split = lastValue
                                lastValue = ""
                                showSplitSheet = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                lastValue = ""
                                showSplitSheet = false
                            }
                        }
                    }
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

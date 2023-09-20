//
//  ContentView.swift
//  NumberConversionApp
//
//  Created by Carter M. Thomas on 9/18/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var numberConversionVM = NumberConversionViewModel()
    
    var body: some View {
        ZStack {
            
            VStack {
                Picker("Type of Conversion", selection: $numberConversionVM.selectedConversion) {
                    ForEach(ConversionType.allCases, id: \.self) {
                        type in Text(type.rawValue)
                    }
                }
                .onChange(of: numberConversionVM.selectedConversion) {
                    value in numberConversionVM.inputUpdate()
                }
                TextField("Input", text: $numberConversionVM.input)
                    .onChange(of: numberConversionVM.input) {value in numberConversionVM.inputUpdate()}
                .textFieldStyle(.roundedBorder)
                
                Text(numberConversionVM.result)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  NumberConversionApp
//
//  Created by Carter M. Thomas on 9/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var input = 0
    var body: some View {
        VStack {
            Text("Decimal to Binary Converter").font(.system(size:30))
                .frame(width:500, alignment: .center)
                .padding(50)
           
            Text("Put Number Here")
            TextField("Number", value: $input, formatter: NumberFormatter())
                .font(.system(size:50))
                .multilineTextAlignment(.center)
                .frame(width: 400,
                       alignment: .center)
                .padding(50)
            Text("Output In Binary")
            let binary = String(input, radix: 2)
            Text(binary).font(.system(size:50))
                .frame(width:400, alignment: .center)
                      
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

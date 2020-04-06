//
//  ContentView.swift
//  CustomButtonInSwiftUI
//
//  Created by ramil on 06.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var color = "White"
    
    var body: some View {
        ZStack {
            Color(self.color)
                .opacity(0.2)
                .edgesIgnoringSafeArea(.all)
                
            HStack {
                SpecialButton(buttonText: "Hello", buttonColor: Color("Blue"))
                    .onTapGesture {
                        self.color = "Blue"
                }
                
                SpecialButton(buttonText: "SwiftUI", buttonColor: Color("Red"))
                    .onTapGesture {
                        self.color = "Red"
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

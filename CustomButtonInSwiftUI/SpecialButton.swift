//
//  SpecialButton.swift
//  CustomButtonInSwiftUI
//
//  Created by ramil on 06.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct SpecialButton: View {
    var buttonText = "My Button"
    var buttonColor = Color("Red")
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 150, height: 55)
                .foregroundColor(Color("White"))
            Text(buttonText)
                .bold()
            
            LeftCorner()
                .trim(from: 0.41, to: 0.59)
                .fill(buttonColor)
                .frame(width: 150, height: 55)
        }
    }
}

struct LeftCorner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 5))
        return path
    }
}

struct SpecialButton_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButton()
    }
}

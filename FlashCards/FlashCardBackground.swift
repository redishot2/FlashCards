//
//  FlashCardBackground.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import SwiftUI

struct FlashCardBackground: View {
    
    private enum Constants {
        static let borderWidth: CGFloat = 2.0
    }
    
    private let width: CGFloat
    private let height: CGFloat
    
    private let backgroundColor: Color
    private let borderColor: Color
    
    internal init(width: CGFloat, height: CGFloat, backgroundColor: Color = .white, borderColor: Color = .black) {
        self.width = width
        self.height = height
        
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
    }
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height, alignment: .center)
            .cornerRadius(30)
            .foregroundColor(backgroundColor)
            .padding(EdgeInsets(top: Constants.borderWidth, leading: Constants.borderWidth, bottom: Constants.borderWidth, trailing: Constants.borderWidth))
            .background(borderColor)
            .cornerRadius(30)
    }
}

struct FlashCardBackground_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardBackground(width: 200, height: 200, backgroundColor: .pink)
    }
}

//
//  FlashCardBackgroundDataSource.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import Foundation
import SwiftUI

public class FlashCardBackgroundDataSource {
    
    private enum Constants {
        static let borderWidth: CGFloat = 2.0
        static let cornerRadius: CGFloat = 30.0
    }
    
    internal let backgroundColor: Color
    internal let borderColor: Color
    
    internal var borderWidth: CGFloat {
        return Constants.borderWidth
    }
    
    internal let width: CGFloat
    internal let height: CGFloat
    
    internal lazy var cornerRadius: CGFloat = {
        
        let largerNumber = max(width, height)
        let calculatedRadius = largerNumber / 3
        
        return min(calculatedRadius, Constants.cornerRadius)
    }()
    
    public init(width: CGFloat, height: CGFloat, backgroundColor: Color = .white, borderColor: Color = .black) {
        self.width = width
        self.height = height
        
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
    }
}

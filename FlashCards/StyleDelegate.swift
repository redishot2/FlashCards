//
//  StyleDelegate.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import Foundation
import SwiftUI

public protocol FlashCardStyleDelegate {
    
    var cardWidth: CGFloat { get }
    var cardHeight: CGFloat { get }
    
    var cardBackgroundColor: Color { get }
    var cardBorderColor: Color { get }
    
    var cardTextColor: Color { get }
}

extension FlashCardStyleDelegate {
    
    var cardBackgroundColor: Color {
        return Color.white
    }
    
    var cardBorderColor: Color {
        return Color.black
    }
    
    var cardTextColor: Color {
        return Color.black
    }
}

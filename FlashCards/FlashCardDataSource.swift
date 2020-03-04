//
//  FlashCardDataSource.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import Foundation

public class FlashCardDataSource {
    
    internal let backgroundDataSource: FlashCardBackgroundDataSource
    
    public init(backgroundDataSource: FlashCardBackgroundDataSource) {
        self.backgroundDataSource = backgroundDataSource
    }
}

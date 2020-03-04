//
//  FlashCardTextDataSource.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import Foundation

public class FlashCardTextDataSource {
    
    public let promptText: String
    public let detailText: String
    
    public init(promptText: String, detailText: String) {
        self.promptText = promptText
        self.detailText = detailText
    }
}

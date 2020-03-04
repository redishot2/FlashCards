//
//  FlashCardView.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import SwiftUI

public struct FlashCardView: View {
    
    private let dataSource: FlashCardDataSource
    
    public var body: some View {
        ZStack {
            FlashCardBackground(dataSource: dataSource.backgroundDataSource)
            Text(dataSource.textDataSource.promptText)
                .foregroundColor(Color.white)
        }
    }
    
    public init(dataSource: FlashCardDataSource) {
        self.dataSource = dataSource
    }
}

struct FlashCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let backgroundDataSource = FlashCardBackgroundDataSource(width: 200, height: 200, backgroundColor: .pink)
        let textDataSource = FlashCardTextDataSource(promptText: "Title", detailText: "This is the answer")
        let dataSource = FlashCardDataSource(backgroundDataSource: backgroundDataSource, textDataSource: textDataSource)
        
        return FlashCardView(dataSource: dataSource)
    }
}

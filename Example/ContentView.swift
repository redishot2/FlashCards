//
//  ContentView.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import FlashCards
import SwiftUI

struct ContentView: View {
    
    private let dataSource: FlashCardDataSource
    
    var body: some View {
        FlashCardView(dataSource: dataSource)
    }
    
    public init(dataSource: FlashCardDataSource) {
        self.dataSource = dataSource
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let backgroundDataSource = FlashCardBackgroundDataSource(width: 200, height: 200, backgroundColor: .pink)
        let textDataSource = FlashCardTextDataSource(promptText: "Title", detailText: "This is the answer")
        let dataSource = FlashCardDataSource(backgroundDataSource: backgroundDataSource, textDataSource: textDataSource)
        
        return ContentView(dataSource: dataSource)
    }
}

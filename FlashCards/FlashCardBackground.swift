//
//  FlashCardBackground.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import SwiftUI

struct FlashCardBackground: View {
    
    private let dataSource: FlashCardBackgroundDataSource
    
    var body: some View {
        Rectangle()
            .frame(width: dataSource.width, height: dataSource.height, alignment: .center)
            .cornerRadius(dataSource.cornerRadius)
            .foregroundColor(dataSource.backgroundColor)
            .padding(dataSource.borderWidth)
            .background(dataSource.borderColor)
            .cornerRadius(dataSource.cornerRadius)
    }
    
    internal init(dataSource: FlashCardBackgroundDataSource) {
        self.dataSource = dataSource
    }
}

struct FlashCardBackground_Previews: PreviewProvider {
    static var previews: some View {
        let dataSource = FlashCardBackgroundDataSource(width: 200, height: 200, backgroundColor: .pink)
        
        return FlashCardBackground(dataSource: dataSource)
    }
}

//
//  FlashCardView.swift
//  FlashCards
//
//  Created by Martinez, Natasha E. on 3/3/20.
//  Copyright © 2020 Martinez, Natasha E. All rights reserved.
//

import SwiftUI

public struct FlashCardView: View {
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Flashcard")
                .foregroundColor(Color.white)
            FlashCardBackground(width: 200, height: 200)
        }
    }
}

struct FlashCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardView()
    }
}

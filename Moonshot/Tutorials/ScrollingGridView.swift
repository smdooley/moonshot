//
//  ScrollingGridView.swift
//  Moonshot
//
//  Created by Sean Dooley on 14/11/2024.
//

import SwiftUI

struct ScrollingGridView: View {
    let layoutA = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    
    let layoutB = [
        GridItem(.adaptive(minimum: 80)),
    ]
    
    let layoutC = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    
    var body: some View {
        // Vertical Grid
//        ScrollView {
//            LazyVGrid(columns: layoutC) {
//                ForEach(0..<1000) {
//                    Text("Item \($0)")
//                }
//            }
//        }
        
        // Horizontal Grid
        ScrollView(.horizontal) {
            LazyHGrid(rows: layoutA) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ScrollingGridView()
}

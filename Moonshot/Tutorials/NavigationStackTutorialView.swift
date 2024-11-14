//
//  NavigationStackTutorialView.swift
//  Moonshot
//
//  Created by Sean Dooley on 14/11/2024.
//

import SwiftUI

struct NavigationStackTutorialView: View {
    var body: some View {
//        NavigationStack {
//            NavigationLink("Tap Me") {
//                Text("Detail View")
//            }
//            .navigationTitle("SwiftUI")
//        }
        
//        NavigationStack {
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                VStack {
//                    Text("This is the label")
//                    Text("So is this")
//                    Image(systemName: "face.smiling")
//                }
//                .font(.largeTitle)
//            }
//        }
        
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    NavigationStackTutorialView()
}

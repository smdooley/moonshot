//
//  ScrollView.swift
//  Moonshot
//
//  Created by Sean Dooley on 14/11/2024.
//

import SwiftUI

struct ScrollTutorialView: View {
    var body: some View {
//        ScrollView {
//            VStack(spacing: 10) {
//                ForEach(0..<100) {
//                    Text("Item \($0)")
//                        .font(.title)
//                }
//            }
//            .frame(maxWidth: .infinity)
//        }
        
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
        
        ScrollView {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ScrollTutorialView()
}

struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

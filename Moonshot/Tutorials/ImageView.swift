//
//  ImageView.swift
//  Moonshot
//
//  Created by Sean Dooley on 14/11/2024.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
//        Image("mosquito-case-study-background-6")
//            .frame(width: 300, height: 300)
//            .clipped()
        
//        Image("mosquito-case-study-background-6")
//            .resizable()
//            .frame(width: 300, height: 300)
        
        Image("mosquito-case-study-background-6")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
        
        Image("mosquito-case-study-background-6")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
        
        Image("mosquito-case-study-background-6")
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ImageView()
}

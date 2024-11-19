//
//  DividerView.swift
//  Moonshot
//
//  Created by Sean Dooley on 19/11/2024.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    DividerView()
}

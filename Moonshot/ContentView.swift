//
//  ContentView.swift
//  Moonshot
//
//  Created by Sean Dooley on 14/11/2024.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack {
            Text("Astronauts: \(astronauts.count)")
            Text("Missions: \(missions.count)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

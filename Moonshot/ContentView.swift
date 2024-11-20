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
    
    // adaptive column layout
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationStack {
            Group {
                if (showingGrid) {
                    GridLayoutView(astronauts: astronauts, missions: missions)
                } else {
                    ListLayoutView(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .toolbar {
                Button {
                        showingGrid.toggle()
                } label: {
                    Image(systemName: showingGrid ? "list.bullet" : "square.grid.2x2")
                        .foregroundColor(.white)
                }
            }
            .navigationDestination(for: Mission.self) { mission in
                    MissionView(mission: mission, astronauts: astronauts)
            }
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}

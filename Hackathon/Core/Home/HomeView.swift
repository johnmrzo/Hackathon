//
//  HomeView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            // Sidebar
            List {
                NavigationLink(destination: ScienceView()) {
                    Label("Science", systemImage: "atom")
                        .font(.headline)
                }
                
                NavigationLink(destination: MathView()) {
                    Label("Math", systemImage: "plus")
                        .font(.headline)
                }
                
                NavigationLink(destination: Text("Profile View")) {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
                
                NavigationLink(destination: Text("Community View")) {
                    Label("More", systemImage: "ellipsis.circle")
                        .font(.headline)
                }
                
            }
            .listStyle(SidebarListStyle())
            .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {}) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

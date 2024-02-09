//
//  DiscoveringGravityView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct Slide2_DiscoveringGravityView: View {
    var body: some View {
        VStack(spacing: 30) {
            // Title with custom styling
            Text("The Story of Newton and the Apple")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.top, 40)
            
            // Content with custom styling
            Text("About 300 years ago, Sir Isaac Newton made a groundbreaking discovery about why things fall towards the ground, all because he saw an apple fall from a tree.")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            // Interactive Element Placeholder with better styling
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue.opacity(0.3)) // Background color of the placeholder
                    .frame(width: 250, height: 250)
                
                Text("Drag and drop the apple!")
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Slide2_DiscoveringGravityView()
}

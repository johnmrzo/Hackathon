//
//  Slide5_GravityAndOurLivesView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct Slide5_GravityAndOurLivesView: View {
    var body: some View {
        VStack(spacing: 30) {
            // Title with custom styling
            Text("How Gravity Affects Us")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.top, 40)
            
            // Content with custom styling
            Text("From the ocean's tides influenced by the Moon's gravity to the reason a stone falls faster than a piece of paper, gravity impacts our daily lives.")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            // Interactive Element Placeholder with better styling
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue.opacity(0.3)) // Background color of the placeholder
                    .frame(width: 250, height: 250)
                
                Text("A quiz!")
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
    Slide5_GravityAndOurLivesView()
}

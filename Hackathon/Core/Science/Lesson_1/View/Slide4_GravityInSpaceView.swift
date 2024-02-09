//
//  Slide4_GravityInSpaceView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct Slide4_GravityInSpaceView: View {
    var body: some View {
        VStack(spacing: 30) {
            // Title with custom styling
            Text("Keeping Planets in Place")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.top, 40)
            
            // Content with custom styling
            Text("The Sun's gravity keeps planets orbiting around it. Earth's gravity keeps the Moon from floating away. That's how powerful gravity is!")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            // Interactive Element Placeholder with better styling
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue.opacity(0.3)) // Background color of the placeholder
                    .frame(width: 250, height: 250)
                
                Text("A simulation of orbit!")
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
    Slide4_GravityInSpaceView()
}

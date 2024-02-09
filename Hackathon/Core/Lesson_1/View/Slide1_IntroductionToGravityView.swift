//
//  IntroductionToGravityView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

import SwiftUI

struct Slide1_IntroductionToGravityView: View {
    var body: some View {
        VStack(spacing: 30) {
            // Title with custom styling
            Text("What Keeps Us Grounded?")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.top, 40)
            
            // Content with custom styling
            Text("Have you ever jumped as high as you could, only to come back down to the ground? Why don't we float off into space?")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            // Interactive Element Placeholder with better styling
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue.opacity(0.3)) // Background color of the placeholder
                    .frame(width: 250, height: 250)
                
                Text("Jump Animation\nPlaceholder")
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
    Slide1_IntroductionToGravityView()
}

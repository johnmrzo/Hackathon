//
//  Slide6_GravityTriviaView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct Slide6_GravityTriviaView: View {
    var body: some View {
        VStack(spacing: 30) {
            // Title with custom styling
            Text("Fun Facts About Gravity")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.top, 40)
            
            // Content with custom styling
            Text("Did you know the Moon's gravity is only 1/6th of Earth's? A person who weighs 150 pounds on Earth would only weigh 25 pounds on the Moon!")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            // Interactive Element Placeholder with better styling
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue.opacity(0.3)) // Background color of the placeholder
                    .frame(width: 250, height: 250)
                
                Text("A Weight on the Moon!")
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
    Slide6_GravityTriviaView()
}

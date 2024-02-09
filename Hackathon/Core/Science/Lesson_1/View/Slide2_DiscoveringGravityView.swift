//
//  DiscoveringGravityView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct Slide2_DiscoveringGravityView: View {
    @State private var isImageMoved = false
    
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
            
            Spacer()
            
            // Interactive Element Placeholder with better styling
            ZStack {
                Image("o")
                    .resizable()
//                    .frame(width: .infinity, height: .infinity)
                
                Image("Apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding()
                    .offset(y: isImageMoved ? 200 : 0)
                    .animation(.easeInOut(duration: 1.0))
                
                Spacer()
            }
        }
        .onTapGesture {
            withAnimation {
                self.isImageMoved.toggle()
            }
        }
        Spacer()
    }
}



#Preview {
    Slide2_DiscoveringGravityView()
}

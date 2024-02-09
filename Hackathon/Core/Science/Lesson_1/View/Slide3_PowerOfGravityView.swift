//
//  Slide3_PowerOfGravityView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct Slide3_PowerOfGravityView: View {
    @State private var imagesFall = false
    
    var body: some View {
        VStack(spacing: 30) {
            // Title with custom styling
            Text("Gravity All Around Us")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.top, 40)
            
            // Content with custom styling
            Text("The gravitational pull depends on the mass. The more mass, the stronger the pull. This is gravity!")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            // Interactive Element Placeholder with better styling
            VStack {
                HStack {
                    Image("basketball")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .offset(y: imagesFall ? 300 : 0) // Adjust the offset distance
                        .animation(.easeInOut(duration: 2))
                    
                    Image("metalball")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .offset(y: imagesFall ? 300 : 0) // Adjust the offset distance
                        .animation(.easeInOut(duration: 1))
                }
                
                Button {
                    withAnimation {
                        self.imagesFall.toggle()
                    }
                } label: {
                    Text("Go")
                        .font(.title)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Slide3_PowerOfGravityView()
}

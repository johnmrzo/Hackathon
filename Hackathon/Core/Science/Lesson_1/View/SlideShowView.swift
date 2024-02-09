//
//  SlideShowView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct SlideShowView: View {
    // Current slide index
    @State private var currentSlideIndex = 0
    
    var body: some View {
        VStack {
            // Display the current slide
            // Depending on your slide structure, this could be more dynamic
            switch currentSlideIndex {
            case 0:
                Slide1_IntroductionToGravityView()
            case 1:
                Slide2_DiscoveringGravityView()
            case 2:
                Slide3_PowerOfGravityView()
            case 3:
                Slide4_GravityInSpaceView()
            case 4:
                Slide5_GravityAndOurLivesView()
            case 5:
                Slide6_GravityTriviaView()
            default:
                Text("Yaaay You Finished!")
            }
            
            Spacer()
            
            // Navigation buttons
            HStack {
                Spacer()
                
                // Back button
                if currentSlideIndex > 0 {
                    Button {
                        currentSlideIndex = max(currentSlideIndex - 1, 0)
                    } label: {
                        Text("Back")
                            .font(.title)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 30)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                
                Spacer()
                
                // Next button
                if currentSlideIndex < 5 {
                    Button {
                        currentSlideIndex = min(currentSlideIndex + 1, 5)
                    } label: {
                        Text("Next")
                            .font(.title)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 30)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                Spacer()
            }
            .padding()
        }
        .transition(.slide)
        .background(Color.white)
//        .background(Color(red: 249/255, green: 168/255, blue: 117/255))
//        .background(Color(red: 147/255, green: 181/255, blue: 198/255))
    }
}

#Preview {
    SlideShowView()
}

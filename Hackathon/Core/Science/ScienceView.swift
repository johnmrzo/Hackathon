//
//  ScienceView.swift
//  Hackathon
//
//  Created by Bakhtiyorjon Mirzajonov on 2/9/24.
//

import SwiftUI

struct ScienceView: View {
    // Dummy navigation function (replace with actual navigation logic)
    func navigateToLesson(_ lessonNumber: Int) {
        print("Navigate to lesson \(lessonNumber)")
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(1...10, id: \.self) { lesson in
                    VStack {
                        Text("Lesson \(lesson): Science Topic")
                            .font(.headline)
                        
                        if lesson < 10 {
                            // Circular button to navigate to the next page
                            Button(action: {
                                self.navigateToLesson(lesson)
                            }) {
                                Text("→")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .frame(width: 50, height: 50) 
                                    .background(Circle().fill(Color.blue))
                            }
                            .padding(.top, 10)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScienceView()
}

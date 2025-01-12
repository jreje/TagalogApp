//
//  WhatDoYouHearView.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/14/24.
//

import SwiftUI

struct WhatDoYouHearView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var progress: CGFloat
    
    let unitWords: [UnitWord] // Words for the current unit
        
    @State var correctWord: UnitWord
    @State var options: [UnitWord] = []
    @State var selectedAnswer: UnitWord? = nil
    @State var passed: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack() {
                Text("What do you hear?")
                // somehow put this in styles
                    .font(.title)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.darkGray)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                // Sound Button
                Button(action: {
                    print("play sound")
                }) {
                    Image(systemName: "speaker.wave.2.fill")
                }
                .modifier(CustomBlueButton())
                
                // Answer Choices
                HStack {
                    Button(action: {
                        passed.toggle()
                    }) {
                        Text("aso")
                    }
                    .modifier(GiantButton())
                    
                    Button(action: {
                        print("Incorrect")
                    }) {
                        Text("pusa")
                    }
                    .modifier(GiantButton())
                }
                .padding(.horizontal)
                
                HStack {
                    Button(action: {
                        print("Incorrect")
                    }) {
                        Text("masaya")
                    }
                    .modifier(GiantButton())
                    
                    Button(action: {
                        print("Incorrect")
                    }) {
                        Text("bahay")
                    }
                    .modifier(GiantButton())
                }
                .padding(.horizontal)
                
                Spacer()
                
                // Check button shouldn't appear if no words are selected
                // Correct answer should cause another "Correct!" box to appear from the bottom up with a swipe animation and a "continue" button
                Button("Can't listen right now") {}
                    .modifier(CustomButtonStyle(style: .white))
                Button("Check") {
                    if passed {
                        print("Correct!")
                    }
                    progress = progress + 0.10
                }
                    .modifier(CustomButtonStyle(style: .white))
            }
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    // Maybe include lives and answer streak
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            dismiss()
                        }) {
                            Label("Back", systemImage: "arrow.backward")
                        }
                        .foregroundStyle(.white)
                    }
                    
                    ToolbarItem() {
                        Rectangle()
                            .modifier(CustomProgressBar(progress: self.progress))
                    }
                }
        }
    }
    
    private func handleAnswer(word: UnitWord) {
        // if selected word = correct word
        // update passed to true
        // light up "check" button
        }
}

#Preview {
    @Previewable @State var previewProgress: CGFloat = 0.5
    let correctWord = UnitWord(text: "aso", audioFilename: "aso.mp3")
    
    WhatDoYouHearView(progress: $previewProgress, unitWords: UnitVocab.unit1, correctWord: correctWord)
}

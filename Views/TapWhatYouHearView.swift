//
//  TapWhatYouHearView.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/14/24.
//

import SwiftUI

struct TapWhatYouHearView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack() {
                Text("Tap what you hear")
                // somehow put this in styles
                    .font(.title)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.darkGray)
                    .multilineTextAlignment(.center)
                    .padding()
                
                // Sound buttons
                HStack {
                    Button(action: {
                        print("play sound")
                    }) {
                        Image(systemName: "speaker.wave.2.fill")
                    }
                    .modifier(CustomBlueButton())
                    
                    Button(action: {
                        print("play slowly")
                    }) {
                        Image(systemName: "tortoise.fill")
                    }
                    .modifier(CustomBlueButton())
                    .frame(maxWidth: 80, maxHeight: 80)
                }
                
                // Notebook lines
                VStack(spacing: 40) {
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 350, height: 2)
                    
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 350, height: 2)
                    
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 350, height: 2)
                }
                .padding(50)
                
                HStack {
                    Button(action: {
                        print("Select word")
                    }) {
                        Text("taga")
                    }
                    .modifier(CustomWordButton())
                    
                    Button(action: {
                        print("Select word")
                    }) {
                        Text("saan")
                    }
                    .modifier(CustomWordButton())
                    
                    Button(action: {
                        print("Select word")
                    }) {
                        Text("ka")
                    }
                    .modifier(CustomWordButton())
                }
                
                Spacer()
                
                // Check button shouldn't appear if no words are selected
                // Correct answer should cause another "Correct!" box to appear from the bottom up with a swipe animation
                Button("Check") {}
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
                            .modifier(CustomProgressBar(progress: 0.8))
                    }
                }
        }
    }
}

#Preview {
    TapWhatYouHearView()
}

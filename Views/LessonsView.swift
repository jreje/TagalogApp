//
//  LessonsView.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/14/24.
//

import SwiftUI

struct LessonsView: View {
    // Add variables to track:
    // 1. Progress for each lesson
    // 2. Lives
    // 3. Streak
    // 4. Language
    @State var progress: CGFloat
    @State var lives: Int
    @State var streak: Int
    @State var language: String
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) { // Spacing for buttons
                NavigationLink(destination: WhatDoYouHearView(progress: $progress, unitWords: UnitVocab.unit1, correctWord: UnitVocab.unit1[0])) {
                    Image(systemName: "star.fill")
                }
                .modifier(CustomLessonsStyle(progress: self.progress))
                
                NavigationLink(destination: TapWhatYouHearView()) {
                    Image(systemName: "star.fill")
                }
                .modifier(CustomLessonsStyle(progress: self.progress))
                
                NavigationLink(destination: TapWhatYouHearView()) {
                    Image(systemName: "star.fill")
                }
                .modifier(CustomLessonsStyle(progress: self.progress))
                
                NavigationLink(destination: TapWhatYouHearView()) {
                    Image(systemName: "star.fill")
                }
                .modifier(CustomLessonsStyle(progress: self.progress))
            }
            .padding()
            .navigationTitle("Unit 1")
            .toolbar {
                // evenly space out buttons
                LessonsToolbar(streak: streak, lives: lives, language: language)
            }
        }
    }
}

struct LessonsToolbar: ToolbarContent {
    let streak: Int
    let lives: Int
    let language: String
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button(action: {
                // add language view, dialects of the philippines!
                print("change language")
            }) {
                Image(systemName: "globe")
                    .foregroundStyle(.white)
            }
        }
        
        ToolbarItem(placement: .topBarLeading) {
            HStack {
                Text("\(streak) 🔥")
                    .foregroundStyle(.white)
            }
        }

        ToolbarItem() {
            HStack {
                Text("\(lives)")
                    .foregroundStyle(.white)
                Image(systemName: "heart.fill")
                    .foregroundStyle(Color.customRed)
            }
        }
        
        // Add view for a full look at the unit
        ToolbarItem() {
            Image(systemName: "text.book.closed.fill")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    LessonsView(progress: 0.10, lives: 3, streak: 3, language: "tagalog")
}

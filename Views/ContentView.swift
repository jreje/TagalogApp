//
//  ContentView.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/13/24.
//

import SwiftUI

struct ContentView: View {
    init() {}
    @State var isActive: Bool = false
    
    var body: some View {
        if self.isActive {
            LessonsView(progress: 0.5, lives: 3, streak: 3, language: "tagalog")
        } else {
            ZStack {
                Rectangle()
                    .background(Color.customGreen)
                LoadingView()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

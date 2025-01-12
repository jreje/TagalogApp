//
//  SignInView.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/13/24.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Duolingo_mascot_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            .padding()
            
            Image("project_world_cast_duolingo")
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .padding()
            
            HStack {
                Text("The free, fun, and effective way to learn a language!")
                    .font(.title)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(red: 75/255, green: 75/255, blue: 75/255))
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding(0.2)
            
            Spacer()
            
            /* Green Button with Shadow */
            /*Button(action: {}) {
            Text("GET STARTED")
                .padding()
                .font(.system(.body, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            }
                .frame(maxWidth: 325)
                .background(Color(red: 88/255, green: 204/255, blue: 2/255))
                .cornerRadius(10)
                .shadow(color: Color(red: 29/255, green: 139/255, blue: 91/255).opacity(0.9), radius: 1, x: 0, y: 4)
                .padding() */
            
            Button("GET STARTED") {}
                .modifier(CustomButtonStyle(style: .green))
            
            Button("I ALREADY HAVE AN ACCOUNT") {}
                .modifier(CustomButtonStyle(style: .white))
                .padding()
            
            /* White button */
            /*Button(action: {}) {
                Text("I ALREADY HAVE AN ACCOUNT")
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 28/255, green: 176/255, blue: 246/255))
                    .padding()
                    .frame(maxWidth: 325) // Ensures the text is properly aligned
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white) // Background color
                            .shadow(color: Color(red: 220/255, green: 220/255, blue: 220/255).opacity(0.8), radius: 1, x: 0, y: 4) // Shadow only on background
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 220/255, green: 220/255, blue: 220/255), lineWidth: 2) // Border stroke
                    )
            }
            .padding(.bottom)*/

        }
    }
    
    
}

#Preview {
    SignInView()
}

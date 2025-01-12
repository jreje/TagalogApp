//
//  Styles.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/14/24.
//

import Foundation
import SwiftUI
import UIKit

extension Color {
    static let customGreen = Color(red: 88/255, green: 204/255, blue: 2/255)                   // "Feather Green"
    static let customYellow = Color(red: 255/255, green: 200/255, blue: 0/255)                 // "Bee"
    static let customRed = Color(red: 255/255, green: 75/255, blue: 75/255)                    // "Cardinal"
    static let customBlue = Color(red: 28/255, green: 176/255, blue: 246/255)                  // "Macaw"
    static let darkGray = Color(red: 75/255, green: 75/255, blue: 75/255)                      // "Eel"
    static let customOutline = Color.gray.opacity(0.7)
    static let customWhite = Color.white // Example if you want aliases for standard colors
}

extension UIColor {
    static let customGreen = UIColor(red: 88/255, green: 204/255, blue: 2/255, alpha: 1.0)
}

struct Styles {
    static func configureNavigationBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.customGreen // Green background
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white] // Title text color
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white] // Large title text color

        // Apply the appearance settings globally
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = .white // Tint color for icons
    }
}

// Used in things like the SignInView
// Try making a struct for each color to improve readability
struct CustomButtonStyle: ViewModifier {
    enum Style {
        case green, white, outline
    }

    var style: Style

    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: 325)
            .font(.system(.body, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(style == .green ? .white : style == .white ? Color.customBlue : .gray)
            .background(style == .green ? Color.customGreen : style == .white ? Color.white : Color.clear)
            .cornerRadius(10)
            .overlay(
                style == .white || style == .outline
                ? RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.7), lineWidth: 1)
                    : nil
            )
            .shadow(color: style == .green ? Color.customGreen.opacity(0.9) : style == .white ? .gray.opacity(0.5) : .clear, radius: 1, x: 0, y: 4)
    }
}

struct CustomBlueButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: 100, maxHeight: 100)
            .foregroundStyle(Color.white)
            .background(Color.customBlue)
            .cornerRadius(20)
    }
}

struct CustomWordButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.darkGray)
            .padding(10)
            .background(Color.white)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.7), lineWidth: 1))
    }
}

struct GiantButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: 200, maxHeight: 200)
            .foregroundStyle(Color.darkGray)
            .fontWeight(.bold)
            .font(.title)
            .background(Color.white)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.7), lineWidth: 1))
    }
}

// Used only for the LessonsView
struct CustomLessonsStyle: ViewModifier {
    var progress: CGFloat // Progress value (0.0 to 1.0)
    
    func body(content: Content) -> some View {
        ZStack {
            // Background circle for progress
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray.opacity(0.2), lineWidth: 5) // Background circle
                .frame(width: 80, height: 80) // Adjust size as needed
            
            // Foreground progress circle
            RoundedRectangle(cornerRadius: 30)
                .trim(from: 0.0, to: progress) // Progress (fraction of a circle)
                .stroke(Color.customYellow, lineWidth: 5)
                .frame(width: 80, height: 80) // Match size
                .rotationEffect(.degrees(-90))
            
            // Button content
            content
                .padding()
                .foregroundColor(.white)
                .background(Color.customGreen)
                .cornerRadius(20)
                .shadow(color: Color(red: 29/255, green: 139/255, blue: 91/255), radius: 1, x: 0, y: 4)
        }
    }
}

// Progress Bar within a lesson
struct CustomProgressBar: ViewModifier {
    var progress: CGFloat
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            // Background bar
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 300, height: 10)
            
            // Foreground bar
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.customYellow)
                .frame(width: 300 * progress, height: 10)
        }
    }
}

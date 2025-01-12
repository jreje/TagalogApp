//
//  LoadingView.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/14/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Image("loading")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

#Preview {
    LoadingView()
}

//
//  TextToAudioView.swift
//  Shortcut
//
//  Created by Yuri Mario Gianoli on 20/11/23.
//

import SwiftUI

struct TextToAudioView: View {
    @Binding var isPresented: Bool
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("Close") {
            isPresented = false
        }
    }
}

//\

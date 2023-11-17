//
//  GalleryView.swift
//  Shortcut
//
//  Created by Yuri Mario Gianoli on 15/11/23.
//

import SwiftUI

struct GalleryView: View {
    @State private var searchBar = ""
    var body: some View {
        NavigationStack{
            Text("")
                .navigationTitle("Gallery")
                .searchable(text: $searchBar, prompt: "Search")
            
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack (alignment: .leading) {
                    Text("Shortcuts for Accessibility")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                        .padding(.bottom, -25)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 25) {
                            ForEach(0..<10) {
                                
                                Text("pippo \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 350, height: 140)
                                    .background(Color.red)
                                    .cornerRadius(25.0)
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 200)
                        Text("Get stuff Done")
                            .bold()
                            .font(.system(size: 25))
                            .padding(.leading, 20)
                            .padding(.bottom, 10)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 25) {
                            ForEach(0..<10) {
                                
                                Text("pippo \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 175, height: 120)
                                    .background(Color.green)
                                    .cornerRadius(25.0)
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 25) {
                            ForEach(0..<10) {
                                
                                Text("pippo \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 175, height: 120)
                                    .background(Color.blue)
                                    .cornerRadius(25.0)
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 200)
                    
                }
            }
        }
    }
}

#Preview {
    GalleryView()
}

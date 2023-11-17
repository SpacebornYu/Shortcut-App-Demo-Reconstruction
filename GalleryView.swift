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
                            ForEach(1..<11) {
                                
                                Text("cristo iddio \($0)")
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
                        .padding(.bottom, 30)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            ForEach(1..<11) {
                                
                                Text("Trasforma il testo in audio \($0)")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color.green)
                                    .cornerRadius(25.0)
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .padding(.bottom, 10)
                    
                    
                    Text("Quick Shortcuts")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                        .padding(.bottom, -20)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            ForEach(1..<11) {
                                
                                Text("pippo Franco \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color.blue)
                                    .cornerRadius(25.0)
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 200)
                    Text("Essentials")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                        .padding(.top, -30)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            ForEach(1..<11) {
                                
                                Text("pippo: no \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color.purple)
                                    .cornerRadius(25.0)

                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 150)
                    Text("Collaborate Better")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                        .padding(.bottom, -20)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            ForEach(1..<11) {
                                
                                Text("pippo: si \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color.orange)
                                    .cornerRadius(25.0)
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 200)
                    
                    Text("Photography")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                        .padding(.top, -30)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            ForEach(1..<11) {
                                
                                Text("pippo Baudo \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color.black)
                                    .cornerRadius(25.0)
                            }
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 150)
                }
            }
        }
    }
}

#Preview {
    GalleryView()
}

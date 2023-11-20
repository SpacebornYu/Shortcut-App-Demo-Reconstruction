//
//  GalleryView.swift
//  Shortcut
//
//  Created by Yuri Mario Gianoli on 15/11/23.
//

import SwiftUI

struct GalleryView: View {
    @State private var searchBar = ""
    @State private var isModalPresented = false
    var body: some View {
       // Color(red: 1.0, green: 0.0, blue: 0.0)
        //value / 255
        
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
                            ForEach(1..<5) {
                                
                                Text("cristo iddio \($0)")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 350, height: 140)
                                    .background(Color(red: 0.0, green: 0.0, blue: 0.0))
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
                            ForEach(1..<11) { _ in
                                Button(action: {
                                    isModalPresented.toggle()
                                }, label: {
                                    Text("Trasforma il testo in audio")
                                        .font(.system(size: 20))
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .frame(width: 165, height: 110)
                                        .background(Color(red: 1.0, green: 0.27, blue: 0.227))
                                        .cornerRadius(25.0)
                                })
                                .sheet(isPresented: $isModalPresented){
                                    TextToAudioView(isPresented: $isModalPresented)
                                }
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
                            ForEach(1..<11) {_ in
                                Button(action: {
                                    isModalPresented.toggle()
                                }, label: {
                                    Text("pippo Franco ")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .frame(width: 165, height: 110)
                                        .background(Color(red: 0.749, green: 0.352, blue: 0.949))
                                        .cornerRadius(25.0)
                                })
                                .sheet(isPresented: $isModalPresented){
                                    QuickShortcutsView(isPresented: $isModalPresented)
                                }
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
                                ForEach(1..<11) {_ in
                                    Text("pippo: no ")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .frame(width: 165, height: 110)
                                        .background(Color(red: 0.039, green: 0.517, blue: 1.0))
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
                                ForEach(1..<11) {_ in
                                    
                                    Text("pippo: si ")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .frame(width: 165, height: 110)
                                        .background(Color(red: 0.203, green: 0.78, blue: 0.349))
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
                                ForEach(1..<11) {_ in
                                    
                                    Text("pippo Baudo")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .frame(width: 165, height: 110)
                                        .background(Color(red: 1.0, green: 0.584, blue: 0.0))
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

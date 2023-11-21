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
                            Image(systemName: "accessibility")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                                .frame(width: 350, height: 140)
                                .background(Color(red: 0.0, green: 0.0, blue: 0.0))
                                .cornerRadius(25.0)
                            Image(systemName: "network.badge.shield.half.filled")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                                .frame(width: 350, height: 140)
                                .background(Color(red: 0.0, green: 0.0, blue: 0.0))
                                .cornerRadius(25.0)
                            
                            Image(systemName: "greetingcard")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                                .frame(width: 350, height: 140)
                                .background(Color(red: 0.0, green: 0.0, blue: 0.0))
                                .cornerRadius(25.0)
                            
                            Image(systemName: "tag")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                                .frame(width: 350, height: 140)
                                .background(Color(red: 0.0, green: 0.0, blue: 0.0))
                                .cornerRadius(25.0)
                        }
                    }
                    .padding(.leading, 10)
                    .frame(height: 200)
                    Text("Get stuff Done")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                        .padding(.bottom, 0)
                    Text("Shortcuts to help you focus")
                        .fontWeight(.regular)
                        .font(.callout)
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .multilineTextAlignment(.leading)
                        .padding (.leading, 20)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            ZStack {
                                VStack {
                                    Button(action: {
                                        isModalPresented.toggle()
                                    }, label: {
                                        VStack {
                                            
                                            Text("Text to audio")
                                                .font(.system(size: 25))
                                                .padding(.top, 50)
                                                .foregroundStyle(.white)
                                                .font(.title)
                                                .frame(width: 165, height: 110)
                                                .background(Color(red: 1.0, green: 0.27, blue: 0.227))
                                                .cornerRadius(25.0)
                                                .fontWeight(.semibold)
                                        }
                                    })
                                    
                                    //                                    .sheet(isPresented: $isModalPresented){
                                    //                                       TextToAudioView(isPresented: $isModalPresented)
                                    //                                    }
                                    
                                    
                                }
                                Image(systemName: "greetingcard")
                                    .padding(.top, -35)
                                    .font(.system(size: 30))
                                    .padding(.leading, -65)
                            }
                            
                            
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Testo in audio")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 1.0, green: 0.27, blue: 0.227))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                TextToAudioView(isPresented: $isModalPresented)
                            //                            }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Testo in audio")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 1.0, green: 0.27, blue: 0.227))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                TextToAudioView(isPresented: $isModalPresented)
                            //                            }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Testo in audio")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 1.0, green: 0.27, blue: 0.227))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                TextToAudioView(isPresented: $isModalPresented)
                            //                            }
                            //
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Testo in audio")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 1.0, green: 0.27, blue: 0.227))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                TextToAudioView(isPresented: $isModalPresented)
                            //                            }
                            // multiple buttons for the first shortcut
                            // }
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
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text( "Franco ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.749, green: 0.352, blue: 0.949))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                QuickShortcutsView(isPresented: $isModalPresented)
                            //                            }
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Franco ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.749, green: 0.352, blue: 0.949))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                QuickShortcutsView(isPresented: $isModalPresented)
                            //                            }
                            
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Franco ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.749, green: 0.352, blue: 0.949))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                QuickShortcutsView(isPresented: $isModalPresented)
                            //                            }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Franco ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.749, green: 0.352, blue: 0.949))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                QuickShortcutsView(isPresented: $isModalPresented)
                            //                            }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Franco ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.749, green: 0.352, blue: 0.949))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                QuickShortcutsView(isPresented: $isModalPresented)
                            //                            }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Franco ")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.749, green: 0.352, blue: 0.949))
                                    .cornerRadius(25.0)
                            })
                            //                            .sheet(isPresented: $isModalPresented){
                            //                                QuickShortcutsView(isPresented: $isModalPresented)
                            //  }
                            //multiple buttons for the second shortcut
                            // }
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
                            
                            Text("no ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.039, green: 0.517, blue: 1.0))
                                .cornerRadius(25.0)
                            
                            
                            Text("no ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.039, green: 0.517, blue: 1.0))
                                .cornerRadius(25.0)
                            
                            Text("pippo: no ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.039, green: 0.517, blue: 1.0))
                                .cornerRadius(25.0)
                            
                            Text("no ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.039, green: 0.517, blue: 1.0))
                                .cornerRadius(25.0)
                            
                            Text("no ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.039, green: 0.517, blue: 1.0))
                                .cornerRadius(25.0)
                            
                            Text("no ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.039, green: 0.517, blue: 1.0))
                                .cornerRadius(25.0)
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
                            
                            
                            Text("si ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.203, green: 0.78, blue: 0.349))
                                .cornerRadius(25.0)
                            
                            Text("si ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.203, green: 0.78, blue: 0.349))
                                .cornerRadius(25.0)
                            
                            Text("si ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.203, green: 0.78, blue: 0.349))
                                .cornerRadius(25.0)
                            
                            Text("si ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.203, green: 0.78, blue: 0.349))
                                .cornerRadius(25.0)
                            
                            Text("si ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.203, green: 0.78, blue: 0.349))
                                .cornerRadius(25.0)
                            Text("si ")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.203, green: 0.78, blue: 0.349))
                                .cornerRadius(25.0)
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
                            
                            
                            Text("Baudo")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                                .cornerRadius(25.0)
                            
                            Text("Baudo")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                                .cornerRadius(25.0)
                            
                            Text("Baudo")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                                .cornerRadius(25.0)
                            
                            Text("pippo Baudo")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                                .cornerRadius(25.0)
                            
                            Text("Baudo")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                                .cornerRadius(25.0)
                            
                            Text("Baudo")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                                .cornerRadius(25.0)
                            Text("Baudo")
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                                .cornerRadius(25.0)
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


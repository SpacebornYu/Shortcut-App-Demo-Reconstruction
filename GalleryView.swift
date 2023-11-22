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
    @State private var isModal2Presented = false
    
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
                                .background(Color.blue)
                                .cornerRadius(25.0)
                            
                            Image(systemName: "network.badge.shield.half.filled")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                                .frame(width: 350, height: 140)
                                .background(Color.red)
                                .cornerRadius(25.0)
                            
                            Image(systemName: "greetingcard")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                                .frame(width: 350, height: 140)
                                .background(Color.cyan)
                                .cornerRadius(25.0)
                            
                            Image(systemName: "swift")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                                .frame(width: 350, height: 140)
                                .background(Color.purple)
                                .cornerRadius(25.0)
                        }
                    }
                    .padding(.leading, 10)
                    .frame(height: 200)
                    Text("Get stuff Done")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 10)
                        .padding(.bottom, 0)
                    Text("Shortcuts to help you focus")
                        .fontWeight(.regular)
                        .font(.callout)
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .multilineTextAlignment(.leading)
                        .padding (.leading, 13)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            ZStack {
                                VStack {
                                    Button(action: {
                                        isModalPresented.toggle()
                                    }, label: {
                                        VStack {
                                            
                                            Text("Start Pomodoro")
                                            
                                                .font(.system(size:18))
                                                .padding(.top, 50)
                                                .foregroundStyle(.white)
                                                .font(.title)
                                                .frame(width: 165, height: 110)
                                                .background(Color(red: 1.0, green: 0.415, blue: 0.431))
                                                .cornerRadius(25.0)
                                                .fontWeight(.semibold)
                                            
                                        }
                                    })
                                    
                                    .sheet(isPresented: $isModalPresented){
                                        TextToAudioView(isPresented: $isModalPresented)
                                    }
                                    
                                    
                                }
                                Image(systemName: "timer")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -65)
                                    .fontWeight(.bold)
                            }
                            
                            
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Turn Text\n  Into Audio")
                                    .font(.system(size: 16))
                                    .padding(.leading,-60 )
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 1.0, green: 0.415, blue: 0.431))
                                    .cornerRadius(25.0)
                                    .fontWeight(.semibold)
                            })
                            Image(systemName: "waveform.path")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 20))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                                .sheet(isPresented: $isModalPresented){
                                    TextToAudioView(isPresented: $isModalPresented)
                                }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Batch Add\n Reminders")
                                    .font(.system(size: 17))
                                    .padding(.leading, -55)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.0, green: 0.713, blue: 0.968))
                                    .cornerRadius(25.0)
                                    .padding(.leading, -13)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -155)
                                    .fontWeight(.bold)
                                
                                
                            })
                            .sheet(isPresented: $isModalPresented){
                                TextToAudioView(isPresented: $isModalPresented)
                            }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("How Many\nDays Until")
                                    .font(.system(size: 17))
                                    .padding(.leading, -55)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.98, green: 0.666, blue: 0.0))
                                    .cornerRadius(25.0)
                                    .padding(.leading, -13)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -155)
                                    .fontWeight(.bold)
                            })
                            .sheet(isPresented: $isModalPresented){
                                TextToAudioView(isPresented: $isModalPresented)
                            }
                            
                            
                            Button(action: {
                                isModalPresented.toggle()
                            }, label: {
                                Text("Sort Lines")
                                    .font(.system(size: 20))
                                    .padding(.leading, -55)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.929, green: 0.776, blue: 0.0))
                                    .cornerRadius(25.0)
                                    .padding(.leading, -13)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "doc.text.fill")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -155)
                                    .fontWeight(.bold)
                            })
                            .sheet(isPresented: $isModalPresented){
                                TextToAudioView(isPresented: $isModalPresented)
                            }
                        }
                        
                        
                    }
                    .padding(.leading, 10)
                    .padding(.bottom, 10)
                    .frame(height: 130)
                    
                    
                    Text("Quick Shortcuts")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 10)
                        .padding(.bottom, -50)
                    
                    Text("Less taps, more done with these fast shortcuts")
                        .fontWeight(.regular)
                        .font(.callout)
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 13)
                        .padding(.top, 20)
                    
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            Button(action: {
                                isModal2Presented.toggle()
                            }, label: {
                                Text("Markup and Send")
                                    .font(.system(size: 17))
                                    .padding(.leading, -10)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.960, green: 0.556, blue: 0.785))
                                    .cornerRadius(25.0)
                                    .padding(.leading, 1)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "photo.fill")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -160)
                                    .fontWeight(.bold)
                            })
                            .sheet(isPresented: $isModal2Presented){
                                QuickShortcutsView(isPresented: $isModal2Presented)
                            }
                            
                            Button(action: {
                                isModal2Presented.toggle()
                            }, label: {
                                Text("NPR News Now")
                                    .font(.system(size: 18))
                                    .padding(.leading, -10)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.549, green: 0.364, blue: 0.772))
                                    .cornerRadius(25.0)
                                    .padding(.leading, 1)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "headphones")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -160)
                                    .fontWeight(.bold)
                            }).padding(.leading, -9)
                                .sheet(isPresented: $isModal2Presented){
                                    QuickShortcutsView(isPresented: $isModal2Presented)
                                }
                            
                            
                            
                            Button(action: {
                                isModal2Presented.toggle()
                            }, label: {
                                Text("Play Playlist")
                                    .font(.system(size: 18))
                                    .padding(.leading, -40)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 1.0, green: 0.415, blue: 0.431))
                                    .cornerRadius(25.0)
                                    .padding(.leading, 1)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -160)
                                    .fontWeight(.bold)
                            })
                            .sheet(isPresented: $isModal2Presented){
                                QuickShortcutsView(isPresented: $isModal2Presented)
                            }
                            
                            
                            Button(action: {
                                isModal2Presented.toggle()
                            }, label: {
                                Text("Wake Apple TV")
                                    .font(.system(size: 18))
                                    .padding(.leading, -15)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 0.0, green: 0.803, blue: 0.878))
                                    .cornerRadius(25.0)
                                    .padding(.leading, 1)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "power.circle.fill")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -160)
                                    .fontWeight(.bold)
                            })
                            .sheet(isPresented: $isModal2Presented){
                                QuickShortcutsView(isPresented: $isModal2Presented)
                            }
                            
                            
                            Button(action: {
                                isModal2Presented.toggle()
                            }, label: {
                                Text("Walk to\n          Coffee Shop")
                                    .font(.system(size: 17))
                                    .padding(.leading, -70)
                                    .padding(.top, 50)
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .frame(width: 165, height: 110)
                                    .background(Color(red: 1.0, green: 0.533, blue: 0.423))
                                    .cornerRadius(25.0)
                                    .padding(.leading, -13)
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "cup.and.saucer.fill")
                                    .foregroundColor(.white)
                                    .padding(.top, -40)
                                    .font(.system(size: 23))
                                    .padding(.leading, -155)
                                    .fontWeight(.bold)
                            })
                            .sheet(isPresented: $isModal2Presented){
                                QuickShortcutsView(isPresented: $isModal2Presented)
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .frame(height: 130)
                    Text("Essentials")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 10)
                    Text("Shortcuts everyone should have in their toolbox")
                        .fontWeight(.regular)
                        .font(.callout)
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 10)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            
                            Text("Meme Maker")
                                .font(.system(size: 20))
                                .padding(.leading, -15)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.321, green: 0.439, blue: 0.784))
                                .cornerRadius(25.0)
                                .padding(.leading, 1)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "face.smiling")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 25))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                            
                            Text("Animate Text\non GIF")
                                .font(.system(size: 18))
                                .padding(.leading, -35)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.929, green: 0.776, blue: 0.0))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "film.fill")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 25))
                                .padding(.leading, -170)
                                .fontWeight(.bold)
                            
                            Text("Create Meeting\nNote")
                                .font(.system(size: 18))
                                .padding(.leading, -15)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.929, green: 0.776, blue: 0.0))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "keyboard")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 25))
                                .padding(.leading, -170)
                                .fontWeight(.bold)
                            
                            Text("Batch Add\n Reminders")
                                .font(.system(size: 17))
                                .padding(.leading, -55)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.0, green: 0.713, blue: 0.968))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "list.bullet")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -155)
                                .fontWeight(.bold)
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 110)
                    Text("Photography")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 10)
                        .padding(.bottom, -20)
                    Text("Automate your library like you've never imagined")
                        .fontWeight(.regular)
                        .font(.callout)
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 10)
                        .padding(.leading, 10)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            
                            
                            Text("Remove\nBackground From\nPotrait")
                                .font(.system(size: 16))
                                .padding(.leading, -10)
                                .padding(.top, 45)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.960, green: 0.556, blue: 0.785))
                                .cornerRadius(25.0)
                                .padding(.leading, 5)
                                .fontWeight(.bold)
                            
                            Image(systemName: "camera.aperture")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                            Text("Where Was\nThis Taken?")
                                .font(.system(size: 18))
                                .padding(.leading, -40)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.929, green: 0.776, blue: 0.0))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "camera.fill")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                            Text("Time Machine")
                                .font(.system(size: 20))
                                .padding(.leading, -20)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.321, green: 0.439, blue: 0.784))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.bold)
                            
                            Image(systemName: "camera.fill")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                            Text("AirDrop Photos")
                                .font(.system(size: 18))
                                .padding(.leading, -20)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 1.0, green: 0.533, blue: 0.423))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "airplayaudio")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 130)
                    
                    Text("Work from Anywhere")
                        .bold()
                        .font(.system(size: 25))
                        .padding(.leading, 10)
                        .padding(.top, 0)
                    Text("Get work done, wherever you are")
                        .fontWeight(.regular)
                        .font(.callout)
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 10)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack(spacing: 15) {
                            
                            
                            Text("Break Timer")
                                .font(.system(size: 20))
                                .padding(.leading, -20)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.0, green: 0.713, blue: 0.968))
                                .cornerRadius(25.0)
                                .padding(.leading, 5)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "hand.raised.fill")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                            Text("Start My\nNext Meeting")
                                .font(.system(size: 18))
                                .padding(.leading, -20)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.321, green: 0.439, blue: 0.784))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "airplayaudio")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                            Text("Create Meeting\nNote")
                                .font(.system(size: 18))
                                .padding(.leading, -10)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.929, green: 0.776, blue: 0.0))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "keyboard")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                            
                            Text("Start a Personal\nConference")
                                .font(.system(size: 18))
                                .padding(.leading, -20)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                .font(.title)
                                .frame(width: 165, height: 110)
                                .background(Color(red: 0.929, green: 0.776, blue: 0.0))
                                .cornerRadius(25.0)
                                .padding(.leading, -13)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "calendar")
                                .foregroundColor(.white)
                                .padding(.top, -40)
                                .font(.system(size: 23))
                                .padding(.leading, -165)
                                .fontWeight(.bold)
                        }
                        
                    }
                    .padding(.leading, 10)
                    .frame(height: 130)
                }
            }
            
            
        }
    }
}
#Preview {
    GalleryView()
}


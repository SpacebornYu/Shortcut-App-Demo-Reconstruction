//
//  ShortcutView.swift
//  Shortcut
//
//  Created by Yuri Mario Gianoli on 15/11/23.
//

import SwiftUI

struct ShortcutView: View {
    @State private var searchBar = ""
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                
                Text("")
                    .navigationTitle("All Shortcuts")
                    .searchable(text: $searchBar, prompt: "Search")
                
                ScrollView(.horizontal, showsIndicators: false){
                    Text("If")
                        .font(.system(size:20))
                        .padding(.top, 65)
                        .padding(.leading, -60)
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(width: 170, height: 120)
                        .background(Color(red: 0.0, green: 0.713, blue: 0.968))
                        .cornerRadius(25.0)
                        .fontWeight(.semibold)
                    
                    
                    Image(systemName: "square.2.layers.3d")
                        .accessibilityHidden(true)
                        .foregroundColor(.white)
                        .padding(.top, -110)
                        .font(.system(size: 24))
                        .padding(.leading, -68)
                        .fontWeight(.bold)
                    
                    Image(systemName: "ellipsis.circle")
                        .accessibilityHidden(true)
                        .foregroundColor(.white)
                        .padding(.top, -115)
                        .font(.system(size: 23))
                        .padding(.leading, 120)
                        .fontWeight(.bold)
                    
                }
                .padding(.leading)
                
                VStack {
                    HStack {
                        Image(systemName: "book.fill")
                            .accessibilityHidden(true)
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color.orange)
                            .fontWeight(.bold)
                            .cornerRadius(6.0)
                        
                        Text("Books")
                            .fontWeight(.semibold)
                            .font(.system(size: 25))
                            .padding(.bottom, 0)
                        Image(systemName: "arrow.right")
                            .fontWeight(.semibold)
                    }
                    .padding(.leading, -175)
                    
                    Text("") //text si può anche cancellare ma causa spostamento di padding
                        .frame(width: 350, height: 110)
                        .background(Color.orange)
                        .cornerRadius(25.0)
                        .padding(.leading, -10)
                      
                    Image(systemName: "book.fill")
                        .font(.system(size: 30))
                        .accessibilityHidden(true)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(Color(red: 0.807, green: 0.431, blue: 0.101))
                        .fontWeight(.bold)
                        .cornerRadius(100)
                        .padding(.leading, -165)
                        .padding(.top, -100)
                    
                    Image(systemName: "headphones")
                        .font(.system(size: 30))
                        .accessibilityHidden(true)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(Color(red: 0.807, green: 0.431, blue: 0.101))
                        .fontWeight(.bold)
                        .cornerRadius(100)
                        .padding(.leading, -70)
                        .padding(.top, -108)
                    
                    Text("Read Current")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding(.leading, -170)
                        .padding(.top, -50)
                    
                    Text("Play Current")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding(.leading, -75)
                        .padding(.top, -57)
                    
                    
                    
                    
                    
                }
                
                
            }
        }
        
    }
    
}

#Preview {
    ShortcutView()
}

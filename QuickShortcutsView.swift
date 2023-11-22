//
//  QuickShortcutsView.swift
//  Shortcut
//
//  Created by Yuri Mario Gianoli on 20/11/23.
//

//import SwiftUI
//
//struct QuickShortcutsView: View {
//    @Binding var isPresented: Bool
//    var body: some View {
//        Button("Cancel") {
//            isPresented = false
//        }
//        .padding(.leading, -170)
//        .padding(.top, -400)
//    }
//}
//
//struct QuickShortcutsView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuickShortcutsView(isPresented: .constant(false))
//    }
//}
import SwiftUI

struct QuickShortcutsView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Markup and Send")
                        .bold()
                        .font(.system(size: 30))
                        .padding(.top, 20)
                    
                    
                    Text("Take any image input, quickly mark it up, and")
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .padding(.top, -10)
                    
                    Text("share it via iMessage")
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .padding(.top, -5)
                    
                    Text("Markup and Send")
                        .font(.system(size: 18))
                        .padding(.top, 65)
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(width: 175, height: 120)
                        .background(Color(red: 0.960, green: 0.556, blue: 0.785))
                        .cornerRadius(25.0)
                        .fontWeight(.semibold)
                        .padding(.top, 20)
                    
                        Image(systemName: "photo.fill")
                            .foregroundColor(.white)
                            .padding(.top, -110)
                            .font(.system(size: 23))
                            .padding(.leading, -70)
                        .fontWeight(.bold)
                        Image(systemName: "ellipsis.circle.fill")
                            .foregroundColor(.white)
                            .padding(.top, -115)
                            .font(.system(size: 23))
                            .padding(.leading, 125)
                        .fontWeight(.bold)
                    
                } .padding(.top, 10)
                
                VStack {
                Text("About This Shortcut")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                    .padding(.leading, -170)
                    .padding(.top, 200)
                    .font(.system(size: 20))
                
                
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color.blue)
                            .fontWeight(.bold)
                            .cornerRadius(6.0)
                        
                        
                        Text("Appears in Share Sheet")
                    }.padding(.leading, -140)
                    
                    
                    HStack {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .fontWeight(.bold)
                            .cornerRadius(6.0)
                        
                        Text("Appears in Quick Actions on Mac")
                    }.padding(.leading, -68)
                    HStack {
                        
                        Image(systemName: "menubar.rectangle")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .fontWeight(.bold)
                            .cornerRadius(6.0)
                    Text("Appears in Menu Bar on Mac")
                }
                    .padding(.leading, -100)
                    
                    HStack {
                        Image(systemName: "text.viewfinder")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color.red)
                            .fontWeight(.bold)
                            .cornerRadius(6.0)
                        
                        Text("Appears on Apple Watch")
                    }
                    .padding(.leading, -130)
                    
                    
                    Button("Set Up Shortcut") {
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 350, height: 49)
                    .background(Color.blue)
                    .cornerRadius(8.0)
                    .padding(.top)
                    .fontWeight(.bold)
                    .font(.system(size: 18))

                }
                .padding(.bottom, 50)
                
            }
            
            
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isPresented = false
                    }) {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.blue)
                            .font(.system(size: 18))
                            .padding(.top, -10)
                    }
                }
            }
            
            .navigationBarItems(leading:
                                    Button(action: {
                isPresented = false
            }) {
                Text("Cancel")
                    .font(.system(size: 20))
                    .padding(.leading, -5)
            }
            )
            
        }
    }
}

struct QuickShortcutsView_Previews: PreviewProvider {
    static var previews: some View {
        QuickShortcutsView(isPresented: .constant(false))
    }
}


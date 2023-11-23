
import SwiftUI

struct TextToAudioView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Start Pomodoro")
                        .bold()
                        .font(.system(size: 30))
                        .padding(.top, -20)
                    
                   
                    Text("Start a custom timer and turn on your focus")
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .padding(.top, -10)
                    
                    Text("until it's done")
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .padding(.top, -5)
                    
                    Text("Start Pomodoro")
                        .font(.system(size: 20))
                        .padding(.top, 50)
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(width: 175, height: 120)
                        .background(Color(red: 1.0, green: 0.415, blue: 0.431))
                        .cornerRadius(25.0)
                        .fontWeight(.semibold)
                        .padding(.top, 20)
                        .accessibilityElement(children: .combine)
                    
                    Image(systemName: "timer")
                        .accessibilityHidden(true)
                        .foregroundColor(.white)
                        .padding(.top, -110)
                        .font(.system(size: 23))
                        .padding(.leading, -70)
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
                        Image(systemName: "menubar.rectangle")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .fontWeight(.bold)
                            .cornerRadius(6.0)
                            .accessibilityHidden(true)
                    Text("Appears in Menu Bar on Mac")
                }
                    .padding(.leading, -100)
                    
                    HStack {
                        Image(systemName: "applewatch.side.right")
                            .accessibilityHidden(true)
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color.black)
                            .fontWeight(.bold)
                            .cornerRadius(6.0)
                        
                        Text("Appears on Apple Watch")
                    }
                    .padding(.leading, -130)
                    
                    
                    Button("Set Up Shortcut") {
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 360, height: 49)
                    .background(Color.blue)
                    .cornerRadius(8.0)
                    .padding(.top)
                    .fontWeight(.bold)
                    .font(.system(size: 18))

                }
                .padding(.bottom)
                
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

struct TextToAudioView_Previews: PreviewProvider {
    static var previews: some View {
        TextToAudioView(isPresented: .constant(false))
    }
}

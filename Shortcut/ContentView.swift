
import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            ShortcutView()
                .tabItem {
                    Label("Shortcut", systemImage: "square.2.layers.3d.fill")
                }
            AutomatationView()
                .tabItem {
                    Label("Automatation", systemImage: "deskclock.fill")
                }
            GalleryView()
                .tabItem {
                    Label("Gallery", systemImage: "sparkles.rectangle.stack.fill")
                }
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}

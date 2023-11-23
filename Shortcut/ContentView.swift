
import SwiftUI

struct ContentView: View {
    @State private var selection = 0

    var body: some View {
        TabView (selection: $selection){
            ShortcutView()
                .tabItem {
                    Label("Shortcut", systemImage: "square.2.layers.3d.fill")
                }
            AutomationView()
                .tabItem {
                    Label("Automation", systemImage: "deskclock.fill")
                }
            GalleryView()
                .tabItem {
                    Label("Gallery", systemImage: "sparkles.rectangle.stack.fill")
                }
                .tag(0)
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}

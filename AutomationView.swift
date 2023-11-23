//
//  AutomatationView.swift
//  Shortcut
//
//  Created by Yuri Mario Gianoli on 15/11/23.
//

import SwiftUI

struct AutomationView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "sparkles")
                    .foregroundStyle(.blue)
                    .font(.custom("", size: 50))
                    .accessibilityHidden(true)
                Text("No Automations")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                Text("Make shortcuts run automatically")
                    .fontWeight(.regular)
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                
                Button("New Automation") {
                    
                }
                .foregroundColor(.white)
                .frame(width: 180, height: 55)
                .background(Color.blue)
                .cornerRadius(10.0)
                .padding(.top)
                .fontWeight(.bold)
                .font(.system(size: 18))
            }
                .navigationTitle("Automation")

        }
    }
}

#Preview {
    AutomationView()
}

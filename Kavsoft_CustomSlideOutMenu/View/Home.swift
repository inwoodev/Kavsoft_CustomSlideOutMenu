//
//  Home.swift
//  Kavsoft_CustomSlideOutMenu
//
//  Created by 황인우 on 2022/07/22.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        // Tab View With Tabs...
        TabView(selection: $selectedTab,
                content: {
            
            // Views...
            HomePage()
                .tag("Home")
            
            History()
                .tag("History")
            
            Settings()
                .tag("Settings")
            
            Help()
                .tag("Help")
            
            Notifications()
                .tag("Notifications")
        })
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// All Subviews...
struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Image("InwooHwang")
                    .resizable()
                    .aspectRatio(contentMode: .fill
                    )
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 5, content: {
                    
                    Text("Inwoo Hwang")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("iOS Explorer")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
                
            }
            .navigationTitle("Home")
        }
    }
}

struct Notifications: View {
    var body: some View {
        NavigationView {
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct History: View {
    var body: some View {
        NavigationView {
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Settings: View {
    var body: some View {
        NavigationView {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Help: View {
    var body: some View {
        NavigationView {
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}

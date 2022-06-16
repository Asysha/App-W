//
//  ContentView.swift
//  App exo Warriors
//
//  Created by Apprenant 11 on 15/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "Home"
    var body: some View {
        
            TabView(selection: $selectedTab){
            Warriors()
              .tabItem {
                 Image(systemName: "moon.stars")
                  Text("Warriors")
               }.tag("Warriors")
            Home()
                  .tabItem {
                     Image(systemName: "globe.asia.australia").accentColor(Color("RED"))
                     Text("Adventure")
                   }.tag("Home")
            Ennemies()
              .tabItem {
                 Image(systemName: "flame")
                 Text("Ennemies")
               }.tag("Ennemies")
                
            }.accentColor(Color("RED"))
            
         
            
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

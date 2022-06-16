//
//  Home.swift
//  App exo Warriors
//
//  Created by Apprenant 11 on 15/06/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
        VStack {
            Spacer()
                Image("home").resizable().overlay(Circle().stroke(Color("YE"), lineWidth: 8)).clipShape(Circle())
                    .frame(width: 280, height: 280)
            Text("Illustrations by Loic Locatelli Kournwsky").foregroundColor(Color("Descri")).font(.footnote).italic().padding(10)
            
            Text("A NEW ADVENTURE IS COMING")
                .bold().foregroundColor(Color("UV"))
                .padding().font(.title2)
                .multilineTextAlignment(.center).padding(20)
            
            NavigationLink(destination: Discovery()) {
                Text("Discover now !").italic().bold()
                    .font(.title2)
                    .padding(18)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("RED"), Color("YE")]), startPoint: .leading, endPoint: .trailing))

                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
            }.accentColor(Color("RED"))
            
            Spacer()
        }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

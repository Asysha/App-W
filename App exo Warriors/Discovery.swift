//
//  Discovery.swift
//  App exo Warriors
//
//  Created by Apprenant 11 on 15/06/2022.
//

import SwiftUI

struct Discovery: View {
    var body: some View {
        VStack{
            Text("Here some clues ...").font(.title2).bold().italic().foregroundColor(Color("YE"))
            Image("D1").resizable()
                .scaledToFill()
                .frame(width: 350, height: 180, alignment: .topLeading)
                .clipped()
            Image("D2").resizable()
                .scaledToFill()
                .frame(width: 350, height: 180, alignment: .center)
                .clipped()
            Image("D4").resizable()
                .scaledToFill()
                .frame(width: 350, height: 180, alignment: .topTrailing)
                .clipped()
            Spacer()
        }
    }
}

struct Discovery_Previews: PreviewProvider {
    static var previews: some View {
        Discovery()
    }
}

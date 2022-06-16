//
//  Profile.swift
//  Appp exo
//
//  Created by Apprenant 11 on 14/06/2022.
//

import SwiftUI

struct Profile: View {
    let fighter : warrior
    var body: some View {
            VStack{
                Image(fighter.illu).resizable().frame(width: 230, height: 380).padding()
                Text(fighter.nom).font(.title2).bold()
                Text(fighter.pow).font(.footnote).italic().bold()
                    .foregroundColor(Color("UV"))
                Text(fighter.story).foregroundColor(Color("Descri")).font(.body)
                
                Spacer(minLength: 30)
            }
        
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(fighter: warrior(nom: "Athéna", pow: "Sword", story: ".", PP: "W22", illu: "W2"))
    }
}

//
//  Warriors.swift
//  Appp exo
//
//  Created by Apprenant 11 on 14/06/2022.
//

import SwiftUI

struct warrior : Identifiable {
    var id = UUID()
    
    let nom : String
    let pow : String
    let story : String
    let PP : String
    let illu : String
}

struct Warriors: View {
    let warriors = [warrior(nom: "Athéna", pow: "Sword", story: "erftgbhnj", PP: "W22", illu: "W2"), warrior(nom: "Anubis", pow: "Crossbow", story: "ghgjhfghijo", PP: "W55", illu: "W5"), warrior(nom: "Artémis", pow: "Bow", story: "dfyguh", PP: "W33", illu: "W3"), warrior(nom: "Astaré", pow: "Blood", story: "wxcvui", PP: "W44", illu: "W4"), warrior(nom: "Anahit", pow: "Sword", story: "cghijofgu", PP: "W11", illu: "W1")]
    var body: some View {
        NavigationView {
            List(warriors) { fighter in
                NavigationLink(destination: Profile(fighter: fighter)){
                        HStack {
                        Image(fighter.PP).resizable().overlay(Circle().stroke(Color("YE"), lineWidth: 4)).clipShape(Circle())
                                .frame(width: 50, height: 50).padding(5)
                            VStack {
                                Spacer()
                                Text(fighter.nom).font(.headline).frame(
                                maxWidth: .infinity,
                                maxHeight: .infinity,
                                alignment: .leading)
                                Text(fighter.pow).font(.footnote).italic().bold()
                                    .foregroundColor(Color("UV")).frame(
                                        maxWidth: .infinity,
                                        maxHeight: .infinity,
                                        alignment: .leading)
                                Text(fighter.story).foregroundColor(Color("Descri")).font(.caption).frame(
                                    maxWidth: .infinity,
                                    maxHeight: .infinity,
                                    alignment: .leading)
                                Spacer()
                            }//
                        }
                //}
                }.navigationTitle("WARRIORS")
                }
        }.accentColor(Color("RED"))
        
            
            
            
         
    }
}

struct Warriors_Previews: PreviewProvider {
    static var previews: some View {
        Warriors()
    }
}

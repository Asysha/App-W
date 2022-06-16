//
//  Ennemies.swift
//  Appp exo
//
//  Created by Apprenant 11 on 15/06/2022.
//

import SwiftUI
struct ennemie : Identifiable {
    var id = UUID()
    
    let nom : String
    let pow : String
    let story : String
    let illu : String
}


struct Ennemies: View {
    let ennemies = [ennemie(nom: "Devourers", pow: "Eating", story: "erftgbhnj", illu: "E1"), ennemie(nom: "Prospektors", pow: "Search into destroy", story: "ghgjhfghijo", illu: "E2"), ennemie(nom: "Arkon Baleus", pow: "???", story: "dfyguh", illu: "E3"), ennemie(nom: "Tetrarkh Lakonia", pow: "Magic", story: "wxcvui", illu: "E4"), ennemie(nom: "Great Monarkh of Agartha", pow: "All", story: "cghijofgu", illu: "E5")]
    var body: some View {
        NavigationView {
            List(ennemies) { fighter in
                NavigationLink(destination: Profile(fighter: warrior(nom: fighter.nom, pow: fighter.pow, story: fighter.story, PP: "", illu: fighter.illu))){
                        VStack {
                                Spacer()
                                Text(fighter.nom).font(.headline).frame(
                                maxWidth: .infinity,
                                maxHeight: .infinity,
                                alignment: .leading)
                                }//
    }
                }.navigationTitle("ENNEMIES").foregroundColor(Color("UV"))//end list
        }.accentColor(Color("RED"))
    }
}

struct Ennemies_Previews: PreviewProvider {
    static var previews: some View {
        Ennemies()
    }
}

//
//  AnimalsLoader.swift
//  AnimalLister
//
//  Created by Michael Ness on 9/14/15.
//  Copyright © 2015 Michael Ness. All rights reserved.
//

import Foundation

struct AnimalsLoader {
    func loadAnimals() -> [ImaginaryAnimal] {
        let mermaid = ImaginaryAnimal(name: "Mermaid",
            height: "1.5",
            location: "Oceans",
            dateLastSeen: "1858",
            imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/John_William_Waterhouse_A_Mermaid.jpg/440px-John_William_Waterhouse_A_Mermaid.jpg"))
        
        let nessie = ImaginaryAnimal(name: "Nessie",
            height: "30",
            location: "Scotland",
            dateLastSeen: "1911",
            imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/en/5/5e/Hoaxed_photo_of_the_Loch_Ness_monster.jpg"))
        
        let kraken = ImaginaryAnimal(name: "Kraken",
            height: "20",
            location: "Iron Islands",
            dateLastSeen: "2015",
            imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/9/9d/Colossal_octopus_by_Pierre_Denys_de_Montfort.jpg"))
        
        let dragon = ImaginaryAnimal(name: "Dragon",
            height: "100",
            location: "Meereen",
            dateLastSeen: "2020",
            imageURL: NSURL(string: "https://vignette1.wikia.nocookie.net/gameofthrones/images/4/49/Dany_climbs_on_drogon.jpg/revision/latest/scale-to-width-down/180?cb=20150609193129&format=webp"))
        
        return [mermaid, nessie, kraken, dragon]
        
    }
}
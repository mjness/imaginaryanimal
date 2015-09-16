//
//  ImaginaryAnimal.swift
//  AnimalLister
//
//  Created by Michael Ness on 9/14/15.
//  Copyright © 2015 Michael Ness. All rights reserved.
//

import Foundation

struct ImaginaryAnimal {
    var name: String
    var height: String
    var location: String
    var dateLastSeen: String
    var imageURL: NSURL?
    
    init?(fromJSON json:AnyObject) {
        
        guard let json = json as? [String:AnyObject] else {
            return nil
        }
        
        name = json["name"] as! String
        height = json["height"] as! String
        location = json["location"] as! String
        dateLastSeen = json["dateLastSeen"] as! String
        
        if let imageURLString = json["imageURL"] as? String {
            imageURL = NSURL(string: imageURLString)
        }
    }
    
}
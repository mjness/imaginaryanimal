//
//  DetailViewController.swift
//  AnimalLister
//
//  Created by Michael Ness on 9/14/15.
//  Copyright © 2015 Michael Ness. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var animal: ImaginaryAnimal?
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var dateLastSeenLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = "Name: " + (animal?.name)!
        self.locationLabel.text = animal?.location
        self.heightLabel.text = animal?.height
        self.dateLastSeenLabel.text = animal?.dateLastSeen
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            if let url = self.animal?.imageURL,
                let imageData = NSData(contentsOfURL: url) {
                    dispatch_async(dispatch_get_main_queue(),{self.imageView.image = UIImage(data: imageData)})
                }
        }
        )
        
    }
}

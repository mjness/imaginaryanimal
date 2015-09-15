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
        self.nameLabel.text = animal?.name
        self.locationLabel.text = animal?.location
        self.heightLabel.text = animal?.height
        self.dateLastSeenLabel.text = animal?.dateLastSeen
        if let url = animal?.imageURL,
            let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data: imageData)
        }
    }
}

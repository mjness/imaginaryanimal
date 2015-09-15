//
//  TableViewController.swift
//  AnimalLister
//
//  Created by Michael Ness on 9/14/15.
//  Copyright © 2015 Michael Ness. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var animalsArray:[ImaginaryAnimal]
    
    required init?(coder aDecoder: NSCoder) {
/*        let testAnimal = ImaginaryAnimal(name: "Mermaid",
            height: 1.5,
            location: "Oceans",
            dateLastSeen: "1858",
            imageURL: nil)
        animalsArray = [testAnimal]
*/
        //animalsArray = []
        animalsArray = AnimalsLoader().loadAnimals()
        super.init(coder: aDecoder)
    }
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        let animal = animalsArray[indexPath.row]
        
        cell.textLabel?.text = "\(indexPath.row + 1). \(animal.name)"
        
//        cell.textLabel?.text = "Cell \(indexPath.row)"

        return cell
    }


    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationViewController = segue.destinationViewController as? DetailViewController, let selectedIndex = self.tableView.indexPathForSelectedRow?.row {
            
            let selectedAnimal = animalsArray[selectedIndex]
            destinationViewController.animal = selectedAnimal
            
        }
    }

}

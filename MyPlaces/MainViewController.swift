//
//  ViewController.swift
//  MyPlaces
//
//  Created by Nikita on 20.05.23.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = Place.getPlaces()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Place", for: indexPath) as! CustomTableViewCell
        let particularPlace = places[indexPath.row]
        
        cell.nameLabel.text = particularPlace.name
        cell.locationLabel.text = particularPlace.location
        cell.typePlaceLabel.text = particularPlace.type
        cell.imageViewOfPlace.image = UIImage(named: particularPlace.image)
        cell.imageViewOfPlace.layer.cornerRadius = cell.imageViewOfPlace.frame.height / 2
        
        return cell
    }
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}
    
    // MARK: Table VIew Delegate
    
}


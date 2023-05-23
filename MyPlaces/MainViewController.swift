//
//  ViewController.swift
//  MyPlaces
//
//  Created by Nikita on 20.05.23.
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = ["Cafe Pushkin", "Bistro de Luxe", "Grand Cafe Brest", "Vasilki Restaurant", "Di Mare Restaurant", "La Crete d'Or", "Dikanka Cafe", "Gastro Cafe Kishmish", "Marbella Restaurant", "Staroe Ruslo Restaurant"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Place", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let name = restaurantNames[indexPath.row]
        
        content.text = name
        content.image = UIImage(named: name)
        content.imageProperties.maximumSize = CGSize(width: 80, height: 80)
        content.imageProperties.cornerRadius = cell.frame.size.height / 2
        
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: Table VIew Delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        95
    }
}


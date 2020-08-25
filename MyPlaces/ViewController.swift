//
//  ViewController.swift
//  MyPlaces
//
//  Created by Apple on 8/22/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    let places = Place.getPlaces()
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return places.count
       }
       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        cell.nameLabel.text = places[indexPath.row].name
        cell.imageOfPlaces.image = UIImage(named: places[indexPath.row].image)
        cell.typeLabel.text = places[indexPath.row].type
        cell.locationLabel.text = places[indexPath.row].location
        cell.imageOfPlaces.layer.cornerRadius = cell.imageOfPlaces.frame.size.height/2
        cell.imageOfPlaces.clipsToBounds = true
           return cell
       }
   
    @IBAction func cancelAction(_ segue: UIStoryboardSegue){}

}


//
//  ViewController.swift
//  MyPlaces
//
//  Created by Apple on 8/22/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return restaurantNames.count
       }
       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageOfPlaces.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageOfPlaces.layer.cornerRadius = cell.imageOfPlaces.frame.size.height/2
        cell.imageOfPlaces.clipsToBounds = true
           return cell
       }
    //MARK: - tableView Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

}


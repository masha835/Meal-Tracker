//
//  MealListTableViewController.swift
//  Meal Tracker
//
//  Created by student on 02.10.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {
    
    var meals: [Meal] = []
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeals()
    }

    

    func saveMeals() {
        
    }
    func loadMeals() {
        meals += [
            Meal(
                name: "Пицца 4 сыра",
                photo: UIImage(named: "123")!,
                notes: "Самая вкусная пицца в вашей жизни,которую вы пробовали или попробуете. Ко всем пиццам прилагается соус для корочки ",
                rating: 3,
                timestap: Date()
            ),
            Meal(
                name: "Пицца маргарита",
                photo: UIImage(named: "pizza4ch")!,
                notes: "Прилагается соус",
                rating: 7,
                timestap: Date()
            ),
            Meal(
                name: "Салат греческий",
                photo: UIImage(named: "salatic")!,
                notes: "Прилагается соус",
                rating: 7,
                timestap: Date()
            ),
            Meal(
                name: "Салат с кукурузой",
                photo: UIImage(named: "salatic2.0")!,
                notes: "Прилагается соус",
                rating: 7,
                timestap: Date()
            ),Meal(
                name: "Пицца - Король сыра",
                photo: UIImage(named: "siiiir")!,
                notes: "Прилагается соус",
                rating: 7,
                timestap: Date()
            )
        ]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let meal = meals[indexPath.row]
        cell.textLabel?.text = meal.name
        cell.imageView?.image = meal.photo
        return cell
    }
}


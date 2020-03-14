//
//  MasterViewController.swift
//  HurstJ Assignment 9
//
//  Created by Jackson Hurst on 3/10/20.
//  Copyright © 2020 Jackson Hurst. All rights reserved.
//

import UIKit

class Recipe {
    var dishName: String
    var ingredients: String
    var directions: String
    init(dishName: String, ingredients: String, directions: String) {
        self.dishName = dishName
        self.ingredients = ingredients
        self.directions = directions
    }
}

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = [Any]()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //navigationItem.leftBarButtonItem = editButtonItem

//        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
//        navigationItem.rightBarButtonItem = addButton
        
        
        insertNewObject()
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    @objc
    func insertNewObject() {
        
        let recipe1 = Recipe(dishName: "Tuna Salad", ingredients: "Tuna\nMayo\nCelery", directions: "Mix tuna and mayo in a bowl\nChop celery\nAdd celery to bowl and mix")
        let recipe2 = Recipe(dishName: "Peanut Butter and Jelly Sandwich", ingredients: "Peanut Butter\nGrape Jelly\nBread", directions: "Spead peanut butter on bread\nSpread jelly on bread\nAdd together and slice bread down the middle")
        let recipe3 = Recipe(dishName: "Chicken Salad", ingredients: "Chicken\nMayo\nCelery", directions: "Mix chicken and mayo in a bowl\nChop celery\nAdd celery to bowl and mix")
        let recipe4 = Recipe(dishName: "Mac and Cheese", ingredients: "Pasta\nCheese\nButter\nMilk", directions: "Boil pasta\nAdd milk and butter\nMix in cheese in pot")
        let recipe5 = Recipe(dishName: "Scrambled Eggs", ingredients: "Eggs\nCheese\nMilk", directions: "Mix eggs, cheese, and milk in a bowl\nAdd to hot pan\nCook until eggs are solid, stir occasionally")
        let recipe6 = Recipe(dishName: "Pancakes", ingredients: "Pancake Mix\nMilk", directions: "Mix pancake mix with milk in a large bowl\nAdd mix to a hot pan on stove\nCook until complete")
        let recipe7 = Recipe(dishName: "Turkey Burgers", ingredients: "Turkey Burger\nCheese\nBuns", directions: "Put Turkey Burger on grill\nCook until center is 165 degrees\nAdd cheese\nPut the burger on a bun and serve")
        let recipe8 = Recipe(dishName: "Waffles", ingredients: "Waffle Mix\nMilk", directions: "Mix waffle mix with milk in a large bowl\nAdd mix to a waffle maker\nCook until complete")
        let recipe9 = Recipe(dishName: "Chicken Noodle Soup", ingredients: "Chicken Broth\nChicken Pieces\nPasta", directions: "Boil the broth\nAdd pasta\nAdd pieces of chicken\nCook until complete")
        let recipe10 = Recipe(dishName: "Turkey Sandwich", ingredients: "Turkey\nMayo\nBread", directions: "Add turkey to the bread\nAdd mayo on the other slice of bread\nAdd cheese if wanted\nServe")
        let recipe11 = Recipe(dishName: "Berry Smoothie", ingredients: "Berries\nYogurt\nMilk", directions: "Add berries, yogurt, and milk to blender\nBlend until it is well mixed\nServe")
        let recipe12 = Recipe(dishName: "Baked Chicken Breast", ingredients: "Chicken\nSalt\nPepper\nItalian Seasoning\nButter", directions: "Butter oven cooking dish\nCover raw chicken with salt and pepper\nCook until internal temp is 165\nPut a dash of italian seasoning on top\nServe")
        
        let recipes = [recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12]
        
        for n in 0...11 {
            objects.insert(recipes[n], at: n)
            let indexPath = IndexPath(row:n, section: n)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
//        objects.insert(recipe1, at: 0)
//        let indexPath = IndexPath(row: 0, section: 0)
//        tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! Recipe
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                detailViewController = controller
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = objects[indexPath.row] as! Recipe
        cell.textLabel!.text = object.dishName
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}


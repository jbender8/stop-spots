//
//  MasterViewController.swift
//  HurstJ Assignment 9
//
//  Created by Jackson Hurst on 3/10/20.
//  Copyright © 2020 Jackson Hurst. All rights reserved.
//

import UIKit
import Foundation
import SwiftyJSON
import Alamofire


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
    @IBOutlet weak var header: UINavigationItem!
    
    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    @objc
    func insertNewObject() {
        
        var spots = [spot]()
        if (clicked == 0) {
            spots = fullertonSpots
            header.title = "Fullerton Spots"
        } else if (clicked == 1){
            spots = clybournSpots
            header.title = "North/Clybourn Spots"
        } else if (clicked == 2){
            spots = divisionSpots
            header.title = "Clark/Division Spots"
        } else if (clicked == 3){
            spots = chicagoSpots
            header.title = "Chicago Spots"
        } else if (clicked == 4){
            spots = grandSpots
            header.title = "Grand Spots"
        } else if (clicked == 5){
            spots = lakeSpots
            header.title = "Lake Spots"
        } else if (clicked == 6){
            spots = monroeSpots
            header.title = "Monroe Spots"
        } else {
            spots = jacksonSpots
            header.title = "Jackson Spots"
        }

        if(spots.count > 0){
            for n in 1...spots.count-1 {
                objects.insert(spots[n], at: n-1)
                let indexPath = IndexPath(row:n-1, section: n-1)
                tableView.insertRows(at: [indexPath], with: .automatic)
            }
        }

//        objects.insert(recipe1, at: 0)
//        let indexPath = IndexPath(row: 0, section: 0)
//        tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! spot
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
        let object = objects[indexPath.row] as! spot
        let diff = object.name.count - 20
        var dots = false
        var endIndex = object.name.index(object.name.endIndex, offsetBy: 0)
        if(object.name.count > 20){
            endIndex = object.name.index(object.name.endIndex, offsetBy: -1 * diff)
            dots = true
        }
        let shortened = object.name[..<endIndex]
        let tempName = String(shortened)
        if (dots){
            cell.textLabel!.text = tempName + "...   [" + object.rating + "/5 Stars]"

        } else {
            cell.textLabel!.text = tempName + "   [" + object.rating + "/5 Stars]"

        }
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


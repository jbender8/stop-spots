//
//  RedlineViewController.swift
//  final project
//
//  Created by Jessica Bender on 3/14/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

var clicked = 0

class RedlineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickJackson(_ sender: Any) {
        clicked = 7
    }
    @IBAction func clickMonroe(_ sender: Any) {
        clicked = 6
    }
    @IBAction func clickLake(_ sender: Any) {
        clicked = 5
    }
    @IBAction func clickGrand(_ sender: Any) {
        clicked = 4
    }
    @IBAction func clickChicago(_ sender: Any) {
        clicked = 3
    }
    @IBAction func ClickClarkDivision(_ sender: Any) {
        clicked = 2
    }
    @IBAction func clickNorthClybourn(_ sender: Any) {
        clicked = 1
    }
    @IBAction func clickFullerton(_ sender: Any) {
        clicked = 0
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Pass the selected object to the new view controller.
    }
    */

}


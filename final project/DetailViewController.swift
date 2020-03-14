//
//  DetailViewController.swift
//  HurstJ Assignment 9
//
//  Created by Jackson Hurst on 3/10/20.
//  Copyright © 2020 Jackson Hurst. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var imageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                var completeRecipe = ""
                completeRecipe.append(detail.dishName)
                completeRecipe.append("\n\n")
                completeRecipe.append("Ingredients:\n")
                completeRecipe.append(detail.ingredients)
                completeRecipe.append("\n\nRecipe:\n")
                completeRecipe.append(detail.directions)
                label.text = completeRecipe
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Recipe? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}


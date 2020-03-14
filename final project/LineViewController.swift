//
//  LineViewController.swift
//  final project
//
//  Created by Jessica Bender on 3/14/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//

import UIKit

class LineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BlueLine(_ sender: Any) {
        let t = "WARNING"
        let warningMessage = "Blue Line coming soon!\n Only Red Line availible"
        let alerted = UIAlertController(title:t, message: warningMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Dismisss", style: .cancel, handler: nil)
        alerted.addAction(dismiss)
        
        present(alerted, animated: true, completion: nil)
    }

    
    @IBAction func YellowLine(_ sender: Any) {
        let t = "WARNING"
        let warningMessage = "Yellow Line coming soon!\n Only Red Line availible"
        let alerted = UIAlertController(title:t, message: warningMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Dismisss", style: .cancel, handler: nil)
        alerted.addAction(dismiss)
        
        present(alerted, animated: true, completion: nil)
    }
    @IBAction func PinkLine(_ sender: Any) {
        let t = "WARNING"
        let warningMessage = "Pink Line coming soon!\n Only Red Line availible"
        let alerted = UIAlertController(title:t, message: warningMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Dismisss", style: .cancel, handler: nil)
        alerted.addAction(dismiss)
        
        present(alerted, animated: true, completion: nil)
    }
    @IBAction func PurpleLine(_ sender: Any) {
        let t = "WARNING"
        let warningMessage = "Purple Line coming soon!\n Only Red Line availible"
        let alerted = UIAlertController(title:t, message: warningMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Dismisss", style: .cancel, handler: nil)
        alerted.addAction(dismiss)
        
        present(alerted, animated: true, completion: nil)
    }
    @IBAction func OrangeLine(_ sender: Any) {
        let t = "WARNING"
        let warningMessage = "Orange Line coming soon!\n Only Red Line availible"
        let alerted = UIAlertController(title:t, message: warningMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Dismisss", style: .cancel, handler: nil)
        alerted.addAction(dismiss)
        
        present(alerted, animated: true, completion: nil)
    }
    @IBAction func GreenLine(_ sender: Any) {
        let t = "WARNING"
        let warningMessage = "Green Line coming soon!\n Only Red Line availible"
        let alerted = UIAlertController(title:t, message: warningMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Dismisss", style: .cancel, handler: nil)
        alerted.addAction(dismiss)
        
        present(alerted, animated: true, completion: nil)
    }
    @IBAction func BrownLine(_ sender: Any) {
        let t = "WARNING"
        let warningMessage = "Brown Line coming soon!\n Only Red Line availible"
        let alerted = UIAlertController(title:t, message: warningMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Dismisss", style: .cancel, handler: nil)
        alerted.addAction(dismiss)
        
        present(alerted, animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

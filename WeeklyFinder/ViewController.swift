//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Павло on 30.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func findDay(_ sender: UIButton) {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTextField.text!)
        dateComponents.month = Int(monthTextField.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let dateFormator = DateFormatter()
        dateFormator.dateFormat = "EEEE"
        
        let date = calendar.date(from: dateComponents)
        
        let weekday = dateFormator.string(from: date!)
        
        resultLabel.text = weekday
    }
}


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
//        This is check if data like day, month, year we can take (like if{}else{})
        guard let day = dateTextField.text, let month = monthTextField.text, let year = yearTF.text else {
            return
        }
//        Set calendar
        let calendar = Calendar.current
//        Setting components of the date
        var dateComponents = DateComponents()
//        Component of date
        dateComponents.day = Int(day)
//        Component of date
        dateComponents.month = Int(month)
//        Component of date
        dateComponents.year = Int(year)
        
        let dateFormator = DateFormatter()
//        Formats data
        dateFormator.dateFormat = "EEEE"
//        Format language to Ukrainian
        dateFormator.locale = Locale(identifier: "uk_Ua")
    
//        This is check if data like date we can take (like if{}else{})
        guard let date = calendar.date(from: dateComponents) else {
            return
        }
        
        let weekday = dateFormator.string(from: date)
        let capitalizedWeekday = weekday.capitalized
        
        resultLabel.text = capitalizedWeekday
    }
//    When user touches screen tab is dissmis
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


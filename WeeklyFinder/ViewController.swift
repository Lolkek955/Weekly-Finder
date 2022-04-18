//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Константин Канюка on 31.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datetextfield: UITextField!
    @IBOutlet weak var monthtTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resaltLB: UILabel!
    
    
    @IBAction func findday(_ sender: UIButton) {
        guard let day = datetextfield.text, let month = monthtTF.text, let year = yearTF.text else{ return }
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let weekday = dateFormatter.string(from: date)
        
        resaltLB.text = weekday
    }
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }// что бы пропада клавиатура при нажатии на экран
    }



//
//  ViewController.swift
//  homework2
//
//  Created by Sharleen Price on 2/11/18.
//  Copyright © 2018 Sharleen Price. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var defaults = UserDefaults.standard
    @IBOutlet weak var date: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //read
        if let x = defaults.string(forKey: "date")
        {
            date.text = x
        }
        
        //set
        let now_date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: now_date)
        let minute = calendar.component(.minute, from: now_date)
        let sec = calendar.component(.second, from: now_date)
        let day = calendar.component(.day, from: now_date)
        let month = calendar.component(.month, from: now_date)
        let year = calendar.component(.year, from: now_date)
        
        let current = "\(month).\(day).\(year)    \(hour):\(minute):\(sec)"
        
        //save
        defaults.set(current,forKey: "date")
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    
}


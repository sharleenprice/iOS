//
//  ViewController.swift
//  homework1
//
//  Created by Sharleen Price on 2/1/18.
//  Copyright © 2018 Sharleen Price. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button () {
        ImageView.image = UIImage(named: "pic1.png")
    }

}


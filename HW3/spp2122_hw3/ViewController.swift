//
//  ViewController.swift
//  spp2122_hw3
//
//  Created by Sharleen Price on 2/18/18.
//  Copyright © 2018 Sharleen Price. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    var TapGesture = UITapGestureRecognizer()
    var TapGesture2 = UITapGestureRecognizer()
    
    @objc func ImageTapped (_ sender: UITapGestureRecognizer) {
        image1.frame = CGRect(x:0, y:0, width:image1.frame.size.width*2, height:image1.frame.size.height*2 )
    }
    @objc func ImageTapped2 (_ sender: UITapGestureRecognizer) {
        let Blur = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurView = UIVisualEffectView(effect: Blur)
        blurView.frame = image2.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        image2.addSubview(blurView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.ImageTapped (_:)))
        TapGesture.numberOfTapsRequired = 1
        image1.addGestureRecognizer(TapGesture)
        image1.isUserInteractionEnabled = true
        
        TapGesture2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.ImageTapped2 (_:)))
        TapGesture2.numberOfTapsRequired = 1
        image2.addGestureRecognizer(TapGesture2)
        image2.isUserInteractionEnabled = true
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


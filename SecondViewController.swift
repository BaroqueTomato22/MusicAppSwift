//
//  SecondViewController.swift
//  MusicAppSwift
//
//  Created by shuger shack on 4/5/18.
//  Copyright © 2018 Samson Cukor. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func slider(_ sender: UISlider)
    {
        lbl.text = String(Int(sender.value))
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
}

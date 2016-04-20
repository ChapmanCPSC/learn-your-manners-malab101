//
//  MannerViewController.swift
//  checkYourself
//
//  Created by Ceferino Malabed on 4/18/16.
//  Copyright © 2016 Ceferino Malabed. All rights reserved.
//

import UIKit

class MannerViewController: UIViewController {
    
    @IBOutlet weak var mannerNameLabel: UILabel!
    @IBOutlet weak var mannerImageView: UIImageView!
    @IBOutlet weak var mannerDescription: UITextView!
    
    var Manner : manner!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.mannerNameLabel.text = Manner.name
        self.mannerDescription.text = Manner.description
        self.mannerImageView.image = Manner.image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

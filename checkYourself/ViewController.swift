//
//  ViewController.swift
//  checkYourself
//
//  Created by Ceferino Malabed on 4/17/16.
//  Copyright © 2016 Ceferino Malabed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mannersTableView: UITableView!
    
    var manners : [manner] = [
        Cough(name: "Coughing", image: UIImage(named: "cough")!),
        Asking(name: "Asking", image: UIImage(named: "PANDT")!),
        Respect(name: "Respect", image: UIImage(named: "respect")!),
        Helping(name: "Helping Others", image: UIImage(named: "Helping")!),
        Harming(name: "Harming Others", image: UIImage(named: "bump")!),
        IVoice(name: "Using Your Inside Voice", image: UIImage(named: "bump")!),
        Swearing(name: "Using Fowl Language", image: UIImage(named: "swearing")!),
        Eating(name: "Chewing your Food", image: UIImage(named: "chewing")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.mannersTableView.dataSource = self
        self.mannersTableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.manners.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let manner = self.manners[indexPath.row]
        
        let cell = UITableViewCell()
        cell.textLabel!.text = manner.name
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let VC = storyboard!.instantiateViewControllerWithIdentifier("detail_view") as! UINavigationController
        
        let MVC = VC.viewControllers[0] as! MannerViewController
        MVC.Manner = self.manners[indexPath.row]
        
        self.presentViewController(VC, animated: true, completion: nil)
    }
}


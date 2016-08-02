//
//  orderAndSearchViewController.swift
//  New Eaze Lyfe
//
//  Created by Appsquad Pvt. Ltd. on 04/07/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit

class orderAndSearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var scrollViewForButtons: UIScrollView!
    
    
    
    @IBOutlet weak var SearchTextField: UINavigationBar!
    
   
    @IBOutlet weak var TodayButtonOne: UIButton!
    
    @IBOutlet weak var TommorwMeneOne: UIButton!
        

var categoryimage = [UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named: "PartyOrder"),UIImage(named:"PartyOrder")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
        SearchTextField.layer.cornerRadius = 22.00
        SearchTextField.layer.borderColor = UIColor.whiteColor().CGColor
        
        SearchTextField.layer.borderWidth = 2.0
        
        

    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return categoryimage.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CELLTAB1", forIndexPath: indexPath) as! CustomeCellForTabOne
        if categoryimage.count > 0 {
            cell.phototabOne.image = categoryimage[indexPath.row]
            return UITableViewCell()
        }
        
        return cell
    }
   

    
    
    
    @IBAction func Dinner(sender: AnyObject) {
    tabBarController?.selectedIndex = 1
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

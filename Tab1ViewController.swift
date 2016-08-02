//
//  Tab1ViewController.swift
//  New Eaze Lyfe
//
//  Created by Appsquad Pvt. Ltd. on 25/07/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit

class Tab1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   
    
    @IBOutlet weak var TodaysMenuTab1: UIButton!
    
    @IBOutlet weak var TommorowButtonTab2: UIButton!
    
    
    var categoryimageTab1 = [UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named: "RegularOrder"),UIImage(named:"RegularOrder")]
    
    
    @IBOutlet weak var FoodTableViewTab1: UITableView!
    
    
    @IBOutlet weak var Tab1SearchTextField: UINavigationBar!
    
  


    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tab1SearchTextField.layer.cornerRadius = 22.00
        Tab1SearchTextField.layer.borderColor = UIColor.whiteColor().CGColor
        
        Tab1SearchTextField.layer.borderWidth = 2.0
        


        // Do any additional setup after loading the view.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryimageTab1.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL1", forIndexPath: indexPath) as! CustomeCellTab1
        if categoryimageTab1.count > 0 {
            
            cell.PhotoTab1.image = categoryimageTab1[indexPath.row]
            
        }
        
        return cell
    }
    
    @IBAction func Tab1Dinner(sender: AnyObject) {
         tabBarController?.selectedIndex = 1
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

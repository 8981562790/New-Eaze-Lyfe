//
//  TAB2ViewController.swift
//  New Eaze Lyfe
//
//  Created by Appsquad Pvt. Ltd. on 23/07/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit

class TAB2ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var TodaysMenuButton: UIButton!
    
    
    @IBOutlet weak var TommorowButton: UIButton!
    
    var categoryimage = [UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named: "todaysOrder"),UIImage(named:"todaysOrder")]
    
    @IBOutlet weak var FoodTableView: UITableView!
    

   
    
    
    @IBOutlet weak var Tab2SearchTextField: UINavigationBar!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tab2SearchTextField.layer.cornerRadius = 22.00
        Tab2SearchTextField.layer.borderColor = UIColor.whiteColor().CGColor
        
        Tab2SearchTextField.layer.borderWidth = 2.0
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryimage.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomeCell
        if categoryimage.count > 0 {
            
            cell.photo.image = categoryimage[indexPath.row]
           
                    }
        
        return cell
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    @IBAction func Tab2Lunch(sender: AnyObject) {
      tabBarController?.selectedIndex = 0
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

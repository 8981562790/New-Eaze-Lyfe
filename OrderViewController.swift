//
//  OrderViewController.swift
//  New Eaze Lyfe
//
//  Created by Appsquad Pvt. Ltd. on 02/07/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    var drower = 0
    var TodayStatus = 1
    
    
    @IBOutlet weak var Image1: UIImageView!
    
    @IBOutlet weak var Image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var dmenu1: UIView!
    
    @IBOutlet weak var dmenu2: UIView!
    
    @IBOutlet weak var dmenu3: UIView!
    
    @IBOutlet weak var dmenu4: UIView!
    
   
    @IBOutlet weak var hidedrawermenu: UIButton!

    @IBOutlet weak var TodaysMenue: UIView!
    
    @IBOutlet weak var TodaysButton: UIButton!
    
    @IBOutlet weak var ViewWithButtons: UIView!
    
    @IBOutlet weak var topArrowImage: UIImageView!
    

    
    @IBOutlet weak var partorderbutton: UIButton!
    
    @IBOutlet weak var zzzzzz: UIButton!
    
    @IBOutlet weak var RegularOrderFiorTop: UIView!
    
    @IBOutlet weak var regularOrderButton: UIButton!

    @IBOutlet weak var RealRegularOrder: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // image download
        let url = NSURL(string: "http://i.imgur.com/DwZ7bO1.jpg")
        
        let data = NSData(contentsOfURL: url!)
        
        Image1.image = UIImage(data: data!)
        
        
        let urltwo = NSURL(string: "http://i.imgur.com/yNQzcbB.png")
        let datatwo = NSData(contentsOfURL: urltwo!)
        Image2.image = UIImage(data: datatwo!)
        
        let urlthree = NSURL(string: "http://i.imgur.com/Xuhfisn.png")
        let datathree = NSData(contentsOfURL: urlthree!)
        image3.image = UIImage(data: datathree!)
        
        
        // end of image downloads

        
        
        
        if (drower == 0){
        hidedrawermenu.hidden = true
        drower = 1
        }
        // drawer menu
        dmenu1.hidden = true
        dmenu2.hidden = true
        dmenu3.hidden = true
        dmenu4.hidden = true
        
        //end drawer menu
        
        
        ViewWithButtons.hidden = true
        zzzzzz.hidden = false
        //RegularOrderFiorTop.hidden = true
        RealRegularOrder.hidden = true
        // three label
        
        ViewWithButtons.layer.cornerRadius = 14.0
        
        ViewWithButtons.layer.masksToBounds = true
        
        ViewWithButtons.layer.borderWidth = 1.0
        // todays menus button
        zzzzzz.layer.cornerRadius = 14.0
        
        zzzzzz.layer.masksToBounds = true
        
        zzzzzz.layer.borderWidth = 1.0
        
        //regular order button
        partorderbutton.layer.cornerRadius = 14.0
        
        partorderbutton.layer.masksToBounds = true
        
        partorderbutton.layer.borderWidth = 1.0
        
        // todays order button
        TodaysButton.layer.cornerRadius = 14.0
        
        TodaysButton.layer.masksToBounds = true
        
        TodaysButton.layer.borderWidth = 1.0

         // real regular order
        
        RealRegularOrder.layer.cornerRadius = 14.0
        
        RealRegularOrder.layer.masksToBounds = true
        
        RealRegularOrder.layer.borderWidth = 1.0
        
        //  regularOrderButton
        regularOrderButton.layer.cornerRadius = 14.0
        
        regularOrderButton.layer.masksToBounds = true
        
        regularOrderButton.layer.borderWidth = 1.0
        


        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // for todays button
    
    @IBAction func TodaysButton(sender: AnyObject) {
     
        if (TodayStatus == 1){
        ViewWithButtons.hidden = false
        topArrowImage.image = UIImage(named: "splScreen")
        partorderbutton.hidden = false
        RealRegularOrder.hidden = false
        RegularOrderFiorTop.hidden = true
        TodayStatus = 2
        }else{
        ViewWithButtons.hidden = true
        topArrowImage.image = UIImage(named: "whiteBackArrow")
        RealRegularOrder.hidden = true
        RegularOrderFiorTop.hidden = false
        TodayStatus = 1
        }
    
    }
    
    @IBAction func PartyOrder(sender: AnyObject) {
        
//        let actionSheetController: UIAlertController = UIAlertController(title: "", message: "", preferredStyle: .Alert)
//    
//        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
//            //Do some stuff
//        }
//        actionSheetController.addAction(cancelAction)
//        self.presentViewController(actionSheetController, animated: true, completion: nil)
        
        let alertController = UIAlertController(title: "Whould You Like To Call Our Help Center!", message: "", preferredStyle: .Alert)
        
        // Create the actions
        let okAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            NSLog("Cancel Pressed")
        }
        let cancelAction = UIAlertAction(title: "Call", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            print("do somthing")
            NSLog("Call Pressed")
        }
        
        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present the controller
        self.presentViewController(alertController, animated: true, completion: nil)

    
    }
    


    @IBAction func RegularOredr(sender: AnyObject) {
        let actionSheetController: UIAlertController = UIAlertController(title: "Comming Soon!", message: "", preferredStyle: .Alert)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
            //Do some stuff
        }
               actionSheetController.addAction(cancelAction)
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    
    }
    
    
    @IBAction func drawerMenu(sender: AnyObject) {
        if (drower == 0){
        dmenu1.hidden = false
        dmenu2.hidden = false
        dmenu3.hidden = false
        dmenu4.hidden = false
        zzzzzz.hidden = false
        hidedrawermenu.hidden = false
        drower = 1
        
        }else{
            dmenu1.hidden = true
            dmenu2.hidden = true
            dmenu3.hidden = true
            dmenu4.hidden = true
             zzzzzz.hidden = false
            hidedrawermenu.hidden = true
            drower = 0
        
        }
    
    
    
    
    
    }
    
    
    @IBAction func drawerMenuHide(sender: AnyObject) {
        if (drower == 1){
        dmenu1.hidden = true
        dmenu2.hidden = true
        dmenu3.hidden = true
        dmenu4.hidden = true
        hidedrawermenu.hidden = true
        zzzzzz.hidden = false
        drower = 0
        }

    }
    // for oredr to meal page
    
   
    @IBAction func OredrToMeals(sender: AnyObject) {
    
    
    
    
    }
    
    
    
    
    // end of meals
    
    
    
    
    
    


}

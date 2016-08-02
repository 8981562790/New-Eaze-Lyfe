//
//  SplashScreenViewController.swift
//  New Eaze Lyfe
//
//  Created by Appsquad Pvt. Ltd. on 29/06/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    @IBOutlet weak var facebookbutton: UIButton!
    
    @IBOutlet weak var loginWithMobilebutton: UIButton!
    
    @IBOutlet weak var gConnect: UIButton!
    
    @IBOutlet weak var ButtonView: UIView!

    
    
    @IBOutlet weak var EazeLyfImage: UIImageView!
    
    @IBAction func LoginWithYourMobileButton(sender: AnyObject) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginWithMobilebutton.backgroundColor = UIColor.clearColor()
        loginWithMobilebutton.layer.cornerRadius = 25
        loginWithMobilebutton.layer.borderWidth = 2
        loginWithMobilebutton.layer.borderColor = UIColor.orangeColor().CGColor
        
        // for face book button
        facebookbutton.layer.cornerRadius = 18
        // for g connect
        gConnect.layer.cornerRadius = 18
        
        
        
        self.ButtonView.frame = CGRectMake(0, 500, 500, 460);
        
        UIView.animateWithDuration(2.5, animations: { () -> Void in
            self.ButtonView.center = CGPointMake(self.ButtonView.center.y + -500 , self.ButtonView.center.x)
        })
        
        // for logo
        
        UIView.animateWithDuration(0.6 ,
       animations: {
    self.EazeLyfImage.transform = CGAffineTransformMakeScale(0.6, 0.6)
            },
    completion: { finish in
    UIView.animateWithDuration(0.6){
    self.EazeLyfImage.transform = CGAffineTransformIdentity
        }
        })
        
        // zooming image only
        
        
         UIView.animateWithDuration(0.7 ,
        animations: {
        self.EazeLyfImage.transform = CGAffineTransformMakeScale(0, 0)
            },
        completion: { finish in
        UIView.animateWithDuration(0.7){
        self.EazeLyfImage.transform = CGAffineTransformIdentity
        }
        })
        
        
        // end logo
    
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func LetMeIn(sender: AnyObject) {
           
       
//let myUrl = NSURL(string: "http://appsquad.cloudapp.net:8080/RESTfulExample/rest/category/fetchcuisine")
        
 let myUrl = NSURL(string: "http://appsquad.cloudapp.net:8080/RESTfulExample/rest/category/fetchcuisine")
        
        
        
        let request = NSMutableURLRequest(URL: myUrl!)
        
        request.HTTPMethod = "POST"
        
        let postString = "pincode=\(700156)"  // this is used to paas the data in url
        
        print(postString)
        
        request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
        
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request)
        {
            (data, response, error) -> Void in
            
            if error != nil {
                print("error = \(error)")
                
                return
            }
            print("response = \(response)")
            
            let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
            
            print("response data = \(responseString)")
            
            
            let Json:NSDictionary = try!  NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers ) as! NSDictionary
            
            
            //  start
            
            let st = Json["cuisinelist"] as! NSArray  // change  remove as NSString
            let jjj = (st)
            print("Rehan= \(jjj)")
            
            print(" Zero position = \(jjj[0])")
            print(" One position = \(jjj[1])")
            print(" Two position = \(jjj[2])")
            
           
            /*let cuisineid0 = jjj["categoryid"] as! Int
            let a =  jjj["categoryimage"] as! String
             let b =  jjj["categoryname"] as! String
            print(" cuisineid0 = \(cuisineid0)")
            print(a)
            print(b)
            
            let categoryid = jjj["categoryid[0]"]
            print(categoryid)
            
            
            
            
            
            
            
            let cuisinelist1 = Json["cuisinelist"]![1]! as! NSDictionary  // change  remove as NSString
            let cuisinelist11 = (cuisinelist1)
            print("Rehan 1= \(cuisinelist11)")

            let cuisineid1 = cuisinelist11["cuisineid"] as! Int
            let a1 =  cuisinelist11["cuisineimage"] as! String
            let b1 =  cuisinelist11["cuisinename"] as! String
            print(" cuisineid0 = \(cuisineid1)")
            print(a1)
            print(b1)
            
            
            
            
            
            
            let cuisinelist2 = Json["cuisinelist"]![2]! as! NSDictionary  // change  remove as NSString
            let cuisinelist22 = (cuisinelist2)
            print("Rehan 3= \(cuisinelist22)")
 
            
            let cuisineid2 = cuisinelist22["cuisineid"] as! Int
            let a2 =  cuisinelist22["cuisineimage"] as! String
            let b2 =  cuisinelist22["cuisinename"] as! String
            print(" cuisineid0 = \(cuisineid2)")
            print(a2)
            print(b2) */
            

            
            
            
            
            // end
            
        }
        
        task.resume()
    
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

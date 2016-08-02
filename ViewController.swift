//
//  ViewController.swift
//  New Eaze Lyfe
//
//  Created by Appsquad Pvt. Ltd. on 29/06/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit
var p = ""
class ViewController: UIViewController, UITextFieldDelegate {

    var activePlayer = 1
    var isValidMobileNo = 0
    
    @IBOutlet weak var message_label: UILabel!
    
    @IBOutlet weak var mobileTextField: UITextField!
   
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var SignInButton: UIButton!
    
    @IBOutlet weak var SignuoButton: UIButton!
    
    
    @IBAction func ShowAndHide(sender: AnyObject) {
        if  activePlayer == 1 && passwordTextField.text != ""{
            
            message_label.text = "Hide Password"
            sender.setImage(UIImage(named: "check.png"), forState: .Normal)
            passwordTextField.secureTextEntry = false;
            activePlayer = 2
            
        }
        else{
            sender.setImage(UIImage(named: "uncheck.png"), forState: .Normal)
            
            passwordTextField.secureTextEntry = true;
            message_label.text = "Show Password"
            activePlayer = 1
            
        }

    
    
    }
    // for keyboard control
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textField:UITextField) -> Bool{
        textField.resignFirstResponder()
        
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // fro keyboard control
        self.mobileTextField.delegate = self
        self.passwordTextField.delegate = self
        // for mbiletext field
        mobileTextField.layer.cornerRadius = 23.0
        
        mobileTextField.layer.masksToBounds = true
        
        mobileTextField.layer.borderColor = UIColor.grayColor().CGColor
   
        mobileTextField.layer.borderWidth = 2.0
        // for passwordTextField
        
        passwordTextField.layer.cornerRadius = 23.0
        
        passwordTextField.layer.masksToBounds = true
        
        passwordTextField.layer.borderColor = UIColor.grayColor().CGColor
        
        passwordTextField.layer.borderWidth = 2.0
        
        // for SignInButton
        SignInButton.layer.cornerRadius = 23
        // for SignuoButton
        SignuoButton.layer.cornerRadius = 23
    }
    
    
    @IBAction func LoginButton(sender: AnyObject) {
        let mobileNumber = mobileTextField.text
        let password = passwordTextField.text
        
        if (mobileNumber == "" && password == ""){
            
        
            let actionSheetController: UIAlertController = UIAlertController(title: "Login Failed", message: "Please Enter Your Mobile And Password!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
      
            
            }else if(mobileNumber != "" && password == ""){
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Password Required", message: "Please Enter Your Password!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)

            
        }else if(mobileNumber == ""  && password != ""){
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Mobile Number Required", message: "Please Enter Your Mobile Number!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
    
        }
        else if !isValidMobileNo(mobileNumber!)
        {
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Invalid Mobile Number", message: "Please Enter Correct Mobile Number!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
            
        }
            // end mobile validation
        else{
            
            //let myUrl = NSURL(string: "http://192.168.1.54:8080/RESTfulExample/rest/category/userlogin")
            
            let myUrl = NSURL(string: "http://appsquad.cloudapp.net:8080/RESTfulExample/rest/category/userlogin")
            
            let request = NSMutableURLRequest(URL: myUrl!)
            
            request.HTTPMethod = "POST"
            
            let postString = "mobileNumber=\(mobileNumber!)&password=\(password!)"  // this is used to paas the data in url
            
            request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) -> Void in
                
                if error != nil {
                    print("error = \(error)")
                    
                    return
                }
                print(response)
                
                let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                
                print("response data = \(responseString)")
                
                let Json:NSDictionary = try! NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers ) as! NSDictionary
                
                let st = Json["status"] as! NSString  // change  remove as NSString
                p = String(st)
                
                if (p == "failed"){
                    let actionSheetController: UIAlertController = UIAlertController(title: "Invalid Mobile Number", message: "This Mobile Number Is Not Registerd!", preferredStyle: .Alert)
                    
                    let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                        //Do some stuff
                    }
                    actionSheetController.addAction(cancelAction)
                    self.presentViewController(actionSheetController, animated: true, completion: nil)
                    
                }
                else{
                    print("name= \(p)")
                    
                    NSOperationQueue.mainQueue().addOperationWithBlock {    // new line added for go to another page
                        self.performSegueWithIdentifier("Go_To_OrderPage", sender: self)
                    }
                }
                
                
            }
            task.resume()
            
            
           
            
        }
        

    }
    
    func isValidMobileNo(mobileNumber:String) -> Bool {
        
        let PHONE_REGEX = "^\\d{10}$"
        
        let mobileTest = NSPredicate(format:"SELF MATCHES %@",PHONE_REGEX )
        
        let result1 = mobileTest.evaluateWithObject(mobileNumber)
        
        return result1
        
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  SignUpViewController.swift
//  New Eaze Lyfe
//
//  Created by Appsquad Pvt. Ltd. on 01/07/16.
//  Copyright © 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit
var jjj = true
var referlC = ""
class SignUpViewController: UIViewController, UITextFieldDelegate {
    var activePlayer = 1
    
    @IBOutlet weak var messge_label: UILabel!
   
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var MobileTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var referalCode: UITextField!
    
    @IBOutlet weak var SubmitButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // for keyboard control
        self.NameTextField.delegate = self
        self.EmailTextField.delegate = self
        self.MobileTextField.delegate = self
        self.PasswordTextField.delegate = self
        self.referalCode.delegate = self
        
        //for NameTextField
        NameTextField.layer.cornerRadius = 23.0
        
        NameTextField.layer.masksToBounds = true
        
        NameTextField.layer.borderColor = UIColor.grayColor().CGColor
        
        NameTextField.layer.borderWidth = 2.0
        
        // for EmailTextField
        EmailTextField.layer.cornerRadius = 23.0
        
        EmailTextField.layer.masksToBounds = true
        
        EmailTextField.layer.borderColor = UIColor.grayColor().CGColor
        
        EmailTextField.layer.borderWidth = 2.0
       
        // for MobileTextField
        MobileTextField.layer.cornerRadius = 23.0
        
        MobileTextField.layer.masksToBounds = true
        
        MobileTextField.layer.borderColor = UIColor.grayColor().CGColor
        
        MobileTextField.layer.borderWidth = 2.0
        
        // for PasswordTextField
        PasswordTextField.layer.cornerRadius = 23.0
        
        PasswordTextField.layer.masksToBounds = true
        
        PasswordTextField.layer.borderColor = UIColor.grayColor().CGColor
        
        PasswordTextField.layer.borderWidth = 2.0
        
        // for referal code
        referalCode.layer.cornerRadius = 23.0
        
        referalCode.layer.masksToBounds = true
        
        referalCode.layer.borderColor = UIColor.grayColor().CGColor
        
        referalCode.layer.borderWidth = 2.0
        
        // for submit button
        
        SubmitButton.layer.cornerRadius = 23.0
    }
    
    
    @IBAction func ShowHideButton(sender: AnyObject) {
        if  activePlayer == 1 && PasswordTextField.text != ""{
            
            messge_label.text = "Hide"
            sender.setImage(UIImage(named: "check.png"), forState: .Normal)
            PasswordTextField.secureTextEntry = false;
            activePlayer = 2
            
        }
        else{
            sender.setImage(UIImage(named: "uncheck.png"), forState: .Normal)
            
            PasswordTextField.secureTextEntry = true;
            messge_label.text = "Show"
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

    
    
    @IBAction func SignUpButton(sender: AnyObject) {
        
        if NameTextField.text == "" && MobileTextField.text == "" && PasswordTextField.text == "" && EmailTextField.text == ""{
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Sign Up Failed", message: "Please enter Name,Email, Mobile and Password!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
        }
            
        else if NameTextField.text != "" && EmailTextField.text == "" && MobileTextField.text == "" && PasswordTextField.text == "" {
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Sign Up Failed", message: "Please enter Your Email, Mobile and Password!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
            
            
        }
        else if NameTextField.text != "" && EmailTextField.text != "" && MobileTextField.text == "" && PasswordTextField.text == ""{
            let actionSheetController: UIAlertController = UIAlertController(title: "Sign Up Failed", message: "Please enter Your Mobile and Password!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
            
        }
        else if NameTextField.text != "" && MobileTextField.text != "" && EmailTextField.text != "" && PasswordTextField.text == "" {
            let actionSheetController: UIAlertController = UIAlertController(title: "Sign Up Failed", message: "Please enter Your Password!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
            
        }
        else if NameTextField.text != "" && EmailTextField.text != "" && MobileTextField.text == "" && PasswordTextField.text != "" {
            let actionSheetController: UIAlertController = UIAlertController(title: "Sign Up Failed", message: "Please enter Your Mobile!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)

            
        }
        else if NameTextField.text == "" && EmailTextField.text != "" && MobileTextField.text != "" && PasswordTextField.text != "" {
            let actionSheetController: UIAlertController = UIAlertController(title: "Sign Up Failed", message: "Please enter Your Name!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
            
        }
        else if NameTextField.text != "" && EmailTextField.text == "" && MobileTextField.text != "" && PasswordTextField.text != "" {
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Sign Up Failed", message: "Please enter Your Valid Email!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
            
        }
          else if !isValidMobileNo(MobileTextField.text!)
        {
            let actionSheetController: UIAlertController = UIAlertController(title: "Invalid Mobile Number", message: "Please Enter Correct Mobile Number!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
   
        }
        else if !isValidEmail(EmailTextField.text!){
            let actionSheetController: UIAlertController = UIAlertController(title: "Invalid Email", message: "Please Enter Valid Email!", preferredStyle: .Alert)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                //Do some stuff
            }
            actionSheetController.addAction(cancelAction)
            self.presentViewController(actionSheetController, animated: true, completion: nil)
        }
            
        else if NameTextField.text != "" && MobileTextField.text != "" && PasswordTextField.text != "" {
            
           /* let myUrl = NSURL(string: "http://192.168.1.54:8080/RESTfulExample/rest/category/signup") */
           
            let myUrl = NSURL(string: "http://appsquad.cloudapp.net:8080/RESTfulExample/rest/category/signup")
            
            
            let request = NSMutableURLRequest(URL: myUrl!)
            
            request.HTTPMethod = "POST"
            
            let postString = "name=\(NameTextField.text!)&contactnumber=\(MobileTextField.text!)&password=\(PasswordTextField.text!)&email=\(EmailTextField.text!)&refcode=\(referalCode.text!)"  // this is used to paas the data in url
            
            request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) -> Void in
                
                if error != nil {
                    print("error = \(error)")
                    
                    return
                }
                print("response = \(response)")
                
                let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                print("response data = \(responseString)")
                   
                
                
                let Json:NSDictionary = try! NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers ) as! NSDictionary
                
                let st = Json["status"] as! Bool  // change  remove as NSString
                jjj = (st)
                print(jjj)
                 let referalCode = Json["message"] as! String
                referlC = (referalCode)
                print(referlC)
                
                
                if (jjj == false){
                    
                    let actionSheetController: UIAlertController = UIAlertController(title: "Check Mobile Number", message: "This Mobile Number Is Already registerd!", preferredStyle: .Alert)
                    
                    let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                        //Do some stuff
                    }
                    actionSheetController.addAction(cancelAction)
                    self.presentViewController(actionSheetController, animated: true, completion: nil)
                }else if (referlC == "Referral code is Invalid") {
                    let actionSheetController: UIAlertController = UIAlertController(title: "Invalid Code", message: "Referral code is Invalid!", preferredStyle: .Alert)
                    
                    let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
                        //Do some stuff
                    }
                    actionSheetController.addAction(cancelAction)
                    self.presentViewController(actionSheetController, animated: true, completion: nil)
                    
                }

                else{
                    NSOperationQueue.mainQueue().addOperationWithBlock {    // new line added for go to another page
                     
    self.performSegueWithIdentifier("SignUp_To_Login", sender: self)
                    
                    }
                }
                
            }
            task.resume()
            
        }
    
    
    }
    
    func isValidMobileNo(mobileNumber:String) -> Bool {
        
        let PHONE_REGEX = "^\\d{10}$"
        
        let mobileTest = NSPredicate(format:"SELF MATCHES %@",PHONE_REGEX )
        
        let result1 = mobileTest.evaluateWithObject(MobileTextField.text)
        
        return result1
        
        
    }

    func isValidEmail(testStr:String) -> Bool {
        print("validate emilId: \(testStr)")
        let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluateWithObject(testStr)
        return result
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

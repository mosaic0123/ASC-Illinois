//
//  LoginViewController.swift
//  ASC Illinois
//
//  Created by Tingting Gao on 3/8/15.
//  Copyright (c) 2015 Tingting Gao. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    
    
    var imageView:UIImageView = UIImageView(image: UIImage(named: "uiuc"))
    var isSignup:Bool = false
    var signupUsername:UITextField = UITextField()
    var signupEmail:UITextField = UITextField()
    var signupPassword:UITextField = UITextField()
    var signUpButton:UIButton = UIButton()
    var logInButton:UIButton = UIButton()
    var tappedColor:UIColor = UIColor(red: 107.0/255.0, green: 189.0/255.0, blue: 77.0/255.0, alpha: 1)
    var untappedColor:UIColor = UIColor.whiteColor()
    var goButton:UIButton = UIButton()
    
    var forgetButton:UIButton = UIButton()
    var skipButton:UIButton = UIButton()
    var border4:UIView = UIView()
    var border5:UIView = UIView()
    var i_cant_do_anything_myself_vc: EventTableViewController?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signupEmail.delegate = self
        signupPassword.delegate = self
        
        signupEmail.autocapitalizationType = UITextAutocapitalizationType.None
        signupPassword.autocapitalizationType = UITextAutocapitalizationType.None
        signupPassword.secureTextEntry = true
        
        signUpButton.frame = CGRect(x: 10, y: view.frame.height/2.0 - 60.0, width: view.frame.width/2.0 - 20, height: 50)
        signUpButton.backgroundColor = UIColor.clearColor()
        signUpButton.layer.cornerRadius = 5
        signUpButton.layer.borderWidth = 0
        signUpButton.layer.borderColor = tappedColor.CGColor
        signUpButton.setTitleColor(tappedColor, forState: .Normal)
        signUpButton.setTitle("Sign Up", forState: .Normal)
        signUpButton.titleLabel!.font = UIFont(name: "Avenir-Medium", size: 20.0)
        
        signUpButton.layer.zPosition = 2
        
        logInButton.frame = CGRect(x: view.frame.width/2.0 + 10.0, y: view.frame.height/2.0 - 60.0, width: view.frame.width/2.0-20, height: 50)
        logInButton.backgroundColor = UIColor.clearColor()
        logInButton.layer.cornerRadius = 5
        logInButton.layer.borderWidth = 0
        logInButton.layer.borderColor = untappedColor.CGColor
        logInButton.setTitleColor(untappedColor, forState: .Normal)
        logInButton.setTitle("Log In", forState: .Normal)
        logInButton.titleLabel!.font = UIFont(name: "Avenir-Medium", size: 20.0)
        logInButton.layer.zPosition = 2
        signUpButton.addTarget(self, action: "signUpButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        logInButton.addTarget(self, action: "logInButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        skipButton.addTarget(self, action: "skipButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height/2.0)
        imageView.layer.zPosition = 1
        label.layer.zPosition = 2
    
        view.addSubview(signUpButton)
        view.addSubview(imageView)
        view.addSubview(logInButton)
        view.addSubview(forgetButton)
        view.addSubview(skipButton)
        skipButton.frame = CGRectMake(view.frame.midX, view.frame.height-40, view.frame.width/2.0, 40)
        skipButton.setTitle("Skip the Login", forState: .Normal)
        skipButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
        skipButton.backgroundColor = UIColor.clearColor()
        skipButton.titleLabel!.font = UIFont(name: "Avenir-Medium", size: 15.0)
        skipButton.hidden = false
        
        forgetButton.frame = CGRectMake(0, view.frame.height-40, view.frame.width/2.0, 40)
        forgetButton.setTitle("Forget Password", forState: .Normal)
        forgetButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
        forgetButton.backgroundColor = UIColor.clearColor()
        forgetButton.titleLabel!.font = UIFont(name: "Avenir-Medium", size: 15.0)
        
        border4.frame = CGRectMake(20, 50, view.frame.width/2.0-60, 3)
        border4.backgroundColor = UIColor.lightGrayColor()
        signUpButton.addSubview(border4)
        
        border5.frame = CGRectMake(20, 50, view.frame.width/2.0-60, 3)
        border5.backgroundColor = UIColor.lightGrayColor()
        logInButton.addSubview(border5)
        
        goButton.frame = CGRectMake(view.frame.midX-40, skipButton.frame.minY-100, 80, 80)
        goButton.backgroundColor = UIColor.clearColor()
        goButton.layer.borderColor = UIColor.lightGrayColor().CGColor
        goButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
        goButton.titleLabel!.font = UIFont(name: "Avenir-Book", size: 18.0)
        goButton.titleLabel!.textAlignment = NSTextAlignment.Center
        goButton.layer.borderWidth = 1.5
        goButton.clipsToBounds = true
        goButton.layer.cornerRadius = 40
        goButton.layer.zPosition = 2
        goButton.hidden = false
        view.addSubview(goButton)

        signUpButtonTapped(signUpButton)
        
        var constX = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: imageView, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        view.addConstraint(constX)
        
        var constY = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: imageView, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        view.addConstraint(constY)
        
    }
    
    @IBAction func signUpButtonTapped(sender: UIButton){
        
        isSignup = true
        goButton.setTitle("Register", forState: .Normal)
        logInButton.setTitleColor(untappedColor, forState: .Normal)
        logInButton.layer.borderColor = untappedColor.CGColor
        signUpButton.setTitleColor(tappedColor, forState: .Normal)
        signUpButton.layer.borderColor = tappedColor.CGColor
        border4.backgroundColor = tappedColor
        border5.backgroundColor = untappedColor
        
        signupEmail.frame = CGRect(x: 25, y: view.frame.height/2.0, width: view.frame.width-50, height: 45)
        signupPassword.frame = CGRect(x: 25, y: view.frame.height/2.0 + 45, width: view.frame.width-50, height: 45)
        var border1:UIView = UIView(frame: CGRectMake(-5, 44, view.frame.width-30, 1))
        border1.backgroundColor = UIColor.lightGrayColor()
        signupEmail.addSubview(border1)
        
        var border2:UIView = UIView(frame: CGRectMake(-5, 44, view.frame.width-30, 1))
        border2.backgroundColor = UIColor.lightGrayColor()
        signupPassword.addSubview(border2)
        
        signupEmail.placeholder = "Enter your email"
        signupPassword.placeholder = "Create a password"
        signupEmail.font = UIFont(name: "Avenir-Light", size: 17.0)
        signupPassword.font = UIFont(name: "Avenir-Light", size: 17.0)
    
        view.addSubview(signupEmail)
        view.addSubview(signupPassword)
        
    }
    
    @IBAction func logInButtonTapped(sender: UIButton){
        isSignup = false
        border5.backgroundColor = tappedColor
        border4.backgroundColor = untappedColor
        goButton.setTitle("Log In", forState: .Normal)
        signupPassword.placeholder = "Enter your password"
        signUpButton.setTitleColor(untappedColor, forState: .Normal)
        signUpButton.layer.borderColor = untappedColor.CGColor
        logInButton.setTitleColor(tappedColor, forState: .Normal)
        logInButton.layer.borderColor = tappedColor.CGColor
    }

    @IBAction func skipButtonTapped(sender: UIButton){
        i_cant_do_anything_myself_vc?.skip = true
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField!) {    //delegate method
    
    }
    
    func textFieldShouldEndEditing(textField: UITextField!) -> Bool {  //delegate method
        return true
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        if(textField == signupPassword){
//            goButton.hidden = false
            textField.resignFirstResponder()
        }
        else{
            textField.resignFirstResponder()
        }
        return true
    }
//    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
//        if(textField == signupEmail){
//            signupUsername.becomeFirstResponder()
//        }
//        else if(textField == signupUsername){
//            signupPassword.becomeFirstResponder()
//        }
//        else if(textField == signupPassword){
//            textField.resignFirstResponder()
//        }
//        
//        return true
//    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//    }
    

}

//
//  DetailViewController.swift
//  ASC Illinois
//
//  Created by Tingting Gao on 3/8/15.
//  Copyright (c) 2015 Tingting Gao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var imageView:UIImageView = UIImageView(image: UIImage(named: "meeting"))
    var addButton:UIButton = UIButton()
    var textView:UITextView = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height/2.0)
        
        addButton.setTitle("Add to Calendar", forState: .Normal)
        addButton.frame = CGRect(x: (view.frame.width-193)/2.0, y: view.frame.height-80, width: 193, height: 53)
        addButton.setTitleColor(UIColor(red: 41.0/255.0, green: 124.0/255.0, blue: 252.0/255.0, alpha: 1), forState: .Normal)
        addButton.layer.borderColor = UIColor(red: 41.0/255.0, green: 124.0/255.0, blue: 252.0/255.0, alpha: 1).CGColor
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1
        
        textView.frame = CGRect(x: 15, y: view.frame.height/2.0 + 5, width: view.frame.width - 30, height: view.frame.height/2.0 - 80 - 20)
        textView.text = "Hogwarts is divided into four houses, each bearing the last name of its founder: Godric Gryffindor, Salazar Slytherin, Rowena Ravenclaw and Helga Hufflepuff. The houses compete throughout the school year, by earning and losing points for various events, for the House Cup (correctly answering a question in class, for example, may earn five or ten points; lateness to class may cost ten points). Each house also has its own Quidditch team that competes for the Quidditch Cup. These two competitions breed rivalries between the houses. Houses at Hogwarts are living and learning communities for their students. Each house is under the authority of one of the Hogwarts staff members. The Heads of the houses, as they are called, are in charge of giving their students important information, dealing with matters of severe punishment, and responding to emergencies in their houses, among other things. Each year, year level groups of every separate house share the same dormitory and classes. The dormitory and common room of a House are, barring rare exceptions, inaccessible to students belonging to other Houses."
        textView.font = UIFont(name: "Avenir-Light", size: 15.0)
        textView.textAlignment = NSTextAlignment.Justified
         view.addSubview(textView)
         view.addSubview(imageView)
         view.addSubview(addButton)
        
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

//
//  AboutViewController2.swift
//  templateForLocalStores
//
//  Created by Brandon Hoglund on 5/24/16.
//  Copyright © 2016 Brandon Hoglund. All rights reserved.
//

import UIKit

class AboutViewController2: UIViewController {

    @IBOutlet weak var firstHoursLabel: UILabel!
    @IBOutlet weak var secondHoursLabel: UILabel!
    @IBOutlet weak var thirdHoursLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!

    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalTransitionStyle =  UIModalTransitionStyle.CrossDissolve
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width + 20, height: UIScreen.mainScreen().bounds.height)
        view.addSubview(blurView)
        view.addSubview(backButton)
        view.addSubview(topLabel)
        view.addSubview(firstHoursLabel)
        view.addSubview(secondHoursLabel)
        view.addSubview(thirdHoursLabel)
        backButton.layer.borderColor = UIColor.blackColor().CGColor
        backButton.layer.cornerRadius = 0.5
        backButton.layer.borderWidth = 0.5
        topLabel.layer.borderColor = UIColor.blackColor().CGColor
        topLabel.layer.cornerRadius = 0.5
        topLabel.layer.borderWidth = 0.5
        
        
    
        
    
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pressOfBackButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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

//
//  ProductsViewController.swift
//  templateForLocalStores
//
//  Created by Brandon Hoglund on 6/2/16.
//  Copyright © 2016 Brandon Hoglund. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {

    @IBOutlet weak var topTitleLabel: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.modalTransitionStyle =  UIModalTransitionStyle.CrossDissolve
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width + 20, height: UIScreen.mainScreen().bounds.height)
        view.addSubview(blurView)
        //view.addSubview(scrollview)
        view.addSubview(topTitleLabel)
        view.addSubview(backButton)
        
    }
    
        // Do any additional setup after loading the view.

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

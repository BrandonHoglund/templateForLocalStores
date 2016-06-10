//
//  ViewController.swift
//  templateForLocalStores
//
//  Created by Brandon Hoglund on 5/13/16.
//  Copyright © 2016 Brandon Hoglund. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
      // control = NSBundle.mainBundle().loadNibNamed("ControlMenuView", owner: self, options: nil).last as! ControlMenuView
      // control.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)
       scrollView.contentSize = CGSizeMake(self.view.frame.width, self.view.frame.height * 2)
        self.view.addSubview(backGroundImage)
        self.view.addSubview(scrollView)
        let vc0 = clearViewConViewController(nibName: "clearViewConViewController", bundle: nil)
        self.addChildViewController(vc0)
        self.scrollView.addSubview(vc0.view)
        vc0.didMoveToParentViewController(self)
        
        
        let vc1 = MenuView(nibName: "MenuView", bundle: nil)
        var frame1 = vc1.view.frame
        frame1.origin.y = self.view.frame.size.height
        vc1.view.frame = frame1
        
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        // Do any additional setup after loading the view, typically from a nib.
      //  self.view.addSubview(control)
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


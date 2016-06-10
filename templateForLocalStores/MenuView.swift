//
//  MenuView.swift
//  templateForLocalStores
//
//  Created by Brandon Hoglund on 5/20/16.
//  Copyright © 2016 Brandon Hoglund. All rights reserved.
//

import UIKit
import MapKit

class MenuView: UIViewController {
    @IBOutlet weak var blankLabel: UILabel!
    @IBOutlet weak var labelInPlaceOfImage: UILabel!

    @IBOutlet weak var realImageView: UIImageView!
    
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width + 20, height: UIScreen.mainScreen().bounds.height)
                // Do any additional setup after loading the view.
        view.addSubview(blurView)
        view.addSubview(blankLabel)
        view.addSubview(labelInPlaceOfImage)
        view.addSubview(button0)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(realImageView)
        
        button0.layer.borderColor = UIColor.blackColor().CGColor
        button0.layer.cornerRadius = 0.5
        button0.layer.borderWidth = 0.5
        
        button2.layer.borderColor = UIColor.blackColor().CGColor
        button2.layer.cornerRadius = 0.5
        button2.layer.borderWidth = 0.5
        
        button4.layer.borderColor = UIColor.blackColor().CGColor
        button4.layer.cornerRadius = 0.5
        button4.layer.borderWidth = 0.5
        self.modalTransitionStyle =  UIModalTransitionStyle.CrossDissolve
        
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
    
    
   
    //MARK: -All button actions are below:
    @IBAction func pressOfButton2(sender: AnyObject) {
        presentViewController(ProductsViewController(), animated: true, completion: nil)
    }
    
    @IBAction func pressOfButton3(sender: AnyObject) {
        if let url = NSURL(string: "tel://6514265884") {
           print("call made")
           UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func pressOfButton4(sender: AnyObject) {
        let coordinate = CLLocationCoordinate2DMake(45.084556,-93.00738)
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
        mapItem.name = "Sunbear Spa"
        mapItem.openInMapsWithLaunchOptions([MKLaunchOptionsDirectionsModeDriving : MKLaunchOptionsDirectionsModeKey])
    }
    
    @IBAction func pressOfButton5(sender: AnyObject) {
        
        presentViewController(AboutViewController2(), animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}

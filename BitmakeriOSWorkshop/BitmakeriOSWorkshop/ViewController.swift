//
//  ViewController.swift
//  BitmakeriOSWorkshop
//
//  Created by KBryan on 2015-10-13.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    @IBOutlet weak var myBitmakerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myBitmakerImage.image = UIImage(named: "workshop.jpg")
    }
    
    @IBAction func launchMapView(sender: AnyObject) {
        
       // Not entirely needed
       // performSegueWithIdentifier("map", sender: self)
        
    }
    
    @IBAction func postToTwitter(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            let twitterSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitterSheet.setInitialText("Creating App with @bitmakerlabs and @MaRSDD")
            self.presentViewController(twitterSheet, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Twitter account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // PERFORM SEGUE IF INDENTIFIER EQUAL SEGUE NAME
//        if segue == "map" {
//            performSegueWithIdentifier("map", sender: self)
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  NextViewController.swift
//  NavigationBarTest
//
//  Created by yosuke.akatsuka on 2015/12/15.
//  Copyright © 2015年 access. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBAction func rightButtonClicked(sender: AnyObject) {
        NSLog("right button clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

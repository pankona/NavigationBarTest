//
//  ViewController.swift
//  NavigationBarTest
//
//  Created by yosuke.akatsuka on 2015/12/15.
//  Copyright © 2015年 access. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBAction func naviButtonClicked(sender: AnyObject) {
        
    }
    
    func onClick(gestureRecognizer: UITapGestureRecognizer) {
        NSLog("clicked")
        NSLog("tag = " + String(gestureRecognizer.view!.tag))
    }
    
    @IBAction func normalClicked(sender: AnyObject) {
        NSLog("normalClicked")
        
        UtilityNaviBar.setNavigationBarStyle(self,
            in_style: UtilityNaviBar.Style.Default,
            in_titleString: "Default")
    }
    
    @IBAction func defaultPageClicked(sender: AnyObject) {
        NSLog("defaultPageClicked")
        
        UtilityNaviBar.setNavigationBarStyle(self,
            in_style: UtilityNaviBar.Style.DefaultPage,
            in_titleString: "DefaultPage")
    }
    
    @IBAction func CCAppClicked(sender: AnyObject) {
        NSLog("CCAppClicked")
        UtilityNaviBar.setNavigationBarStyle(self,
            in_style: UtilityNaviBar.Style.HCHtml,
            in_titleString: "HCHtml")
    }
   
    @IBAction func openWindowClicked(sender: AnyObject) {
        NSLog("openWindowClicked")
        UtilityNaviBar.setNavigationBarStyle(self,
            in_style:
            UtilityNaviBar.Style.OpenWindow,
            in_titleString: "OpenWindow")
    }
    
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

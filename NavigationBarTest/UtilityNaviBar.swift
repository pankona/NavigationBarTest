//
//  UtilityNaviBar.swift
//  NavigationBarTest
//
//  Created by yosuke.akatsuka on 2015/12/16.
//  Copyright © 2015年 access. All rights reserved.
//

import UIKit

class UtilityNaviBar : NSObject {
    
    enum Style {
        case Default
        case DefaultPage
        case OpenWindow
        case HCHtml
    }
    
    enum ViewTag {
        case Title
        case Info
        case Close
    }
    
    static func setNavigationBarStyle(in_ui: UIViewController, in_style: Style, in_titleString: String) {
        
        switch in_style {
            
        case .DefaultPage:
            setDefaultPage(in_ui, in_titleString: in_titleString)
        case .OpenWindow:
            setOpenWindow(in_ui, in_titleString: in_titleString)
        case .HCHtml:
            setHCHtml(in_ui, in_titleString: in_titleString)
        default:
            setDefault(in_ui, in_titleString: in_titleString)
        }
    }
    
    private static func setDefault(in_ui: UIViewController, in_titleString: String) {
        in_ui.navigationController?.navigationBar.showBottomHairline()
        
        in_ui.navigationItem.leftBarButtonItem = UIBarButtonItem()
        in_ui.navigationItem.rightBarButtonItem = UIBarButtonItem()
        
        let titleView: UIView = UIView(frame: CGRectMake(0,0,200,30))
        let attrString = NSMutableAttributedString()
        attrString.appendAttributedString(NSAttributedString(string: in_titleString))
        
        let label = UILabel(frame: CGRectMake(0, 0, titleView.frame.size.width, 30))
        label.textAlignment = NSTextAlignment.Center
        label.attributedText = attrString
        label.center = CGPointMake(titleView.frame.size.width / 2, titleView.frame.size.height / 2)
        label.font = UIFont.boldSystemFontOfSize(16.0)

        titleView.backgroundColor = UIColor(red: 0, green: 158/255, blue: 35/255, alpha: 0)
        titleView.center = CGPointMake((in_ui.navigationController?.navigationBar.frame.width)! / 2,
            (in_ui.navigationController?.navigationBar.frame.height)! / 2)
        
        titleView.addSubview(label)
        in_ui.navigationItem.titleView = titleView
    }
    
    private static func setOpenWindow(in_ui: UIViewController, in_titleString: String) {
        in_ui.navigationController?.navigationBar.showBottomHairline()
        
        in_ui.navigationItem.leftBarButtonItem = UIBarButtonItem()
        in_ui.navigationItem.rightBarButtonItem = UIBarButtonItem()
        
        let titleView: UIView = UIView(frame: CGRectMake(0,0,200,30))
        let attrString = NSMutableAttributedString()
        attrString.appendAttributedString(NSAttributedString(string: in_titleString))
        
        let aSelector = Selector("onClick:")
        let image = UIImage(named: "Image")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let infoButton: UIBarButtonItem = UIBarButtonItem(image: image,
            style: UIBarButtonItemStyle.Plain,
            target: in_ui,
            action: aSelector)
        in_ui.navigationItem.leftBarButtonItem = infoButton
        
        let label = UILabel(frame: CGRectMake(0, 0, titleView.frame.size.width, 30))
        label.textAlignment = NSTextAlignment.Center
        label.attributedText = attrString
        label.center = CGPointMake(titleView.frame.size.width / 2, titleView.frame.size.height / 2)
        label.font = UIFont.boldSystemFontOfSize(16.0)

        titleView.backgroundColor = UIColor(red: 0, green: 158/255, blue: 35/255, alpha: 0)
        titleView.center = CGPointMake((in_ui.navigationController?.navigationBar.frame.width)! / 2,
            (in_ui.navigationController?.navigationBar.frame.height)! / 2)
        
        titleView.addSubview(label)
        in_ui.navigationItem.titleView = titleView
    }
    
    private static func setHCHtml(in_ui: UIViewController, in_titleString: String) {
        in_ui.navigationController?.navigationBar.showBottomHairline()
        
        in_ui.navigationItem.leftBarButtonItem = UIBarButtonItem()
        in_ui.navigationItem.rightBarButtonItem = UIBarButtonItem()
        
        let titleView: UIView = UIView(frame: CGRectMake(0,0,200,30))
        let attrString = NSMutableAttributedString()
        attrString.appendAttributedString(NSAttributedString(string: in_titleString))
        
        let aSelector = Selector("onClick:")
        let image = UIImage(named: "Image")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let infoButton: UIBarButtonItem = UIBarButtonItem(image: image,
            style: UIBarButtonItemStyle.Plain,
            target: in_ui,
            action: aSelector)
        in_ui.navigationItem.rightBarButtonItem = infoButton
        
        let label = UILabel(frame: CGRectMake(0, 0, titleView.frame.size.width, 30))
        label.textAlignment = NSTextAlignment.Center
        label.attributedText = attrString
        label.center = CGPointMake(titleView.frame.size.width / 2, titleView.frame.size.height / 2)
        label.font = UIFont.boldSystemFontOfSize(16.0)

        titleView.backgroundColor = UIColor(red: 0, green: 158/255, blue: 35/255, alpha: 0)
        titleView.center = CGPointMake((in_ui.navigationController?.navigationBar.frame.width)! / 2,
            (in_ui.navigationController?.navigationBar.frame.height)! / 2)
        
        titleView.addSubview(label)
        in_ui.navigationItem.titleView = titleView
    }
    
    private static func setDefaultPage(in_ui: UIViewController, in_titleString: String) {
        
        in_ui.navigationController?.navigationBar.hideBottomHairline()
        
        in_ui.navigationItem.leftBarButtonItem = UIBarButtonItem()
        in_ui.navigationItem.rightBarButtonItem = UIBarButtonItem()
        
        let titleView: UIView = UIView(frame: CGRectMake(0,0,200,30))
        
        let aSelector = Selector("onClick:")
        let tapGestureRecognizer = UITapGestureRecognizer(target: in_ui, action: aSelector)
        titleView.addGestureRecognizer(tapGestureRecognizer)
        titleView.tag = ViewTag.Title.hashValue
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "Image")
        attachment.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        let attrString = NSMutableAttributedString()
        attrString.appendAttributedString(NSAttributedString(attachment: attachment))
        attrString.appendAttributedString(NSAttributedString(string: " defaultPage title title test test"))
        
        let label = UILabel(frame: CGRectMake(0, 0, titleView.frame.size.width, 30))
        label.textAlignment = NSTextAlignment.Center
        label.attributedText = attrString
        label.center = CGPointMake(titleView.frame.size.width / 2, titleView.frame.size.height / 2)
        label.font = UIFont.boldSystemFontOfSize(16.0)

        titleView.backgroundColor = UIColor(red: 0, green: 158/255, blue: 35/255, alpha: 0)
        titleView.center = CGPointMake((in_ui.navigationController?.navigationBar.frame.width)! / 2,
            (in_ui.navigationController?.navigationBar.frame.height)! / 2)
        
        titleView.addSubview(label)
        in_ui.navigationItem.titleView = titleView
    }
}

extension UINavigationBar {
    
    func hideBottomHairline() {
        let navigationBarImageView = hairlineImageViewInNavigationBar(self)
        navigationBarImageView!.hidden = true
    }
    
    func showBottomHairline() {
        let navigationBarImageView = hairlineImageViewInNavigationBar(self)
        navigationBarImageView!.hidden = false
    }
    
    private func hairlineImageViewInNavigationBar(view: UIView) -> UIImageView? {
        if view.isKindOfClass(UIImageView) && view.bounds.height <= 1.0 {
            return (view as! UIImageView)
        }
        
        let subviews = (view.subviews as [UIView])
        for subview: UIView in subviews {
            if let imageView: UIImageView = hairlineImageViewInNavigationBar(subview) {
                return imageView
            }
        }
        
        return nil
    }
    
}
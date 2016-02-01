//
//  TrafficVC.swift
//  City-Dashboard
//
//  Created by Miwand Najafe on 2016-02-01.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import UIKit

class TrafficVC: UIViewController {
    
    
    @IBOutlet var trafficMainView: TrafficMainView!
    private var midSize:CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        midSize = self.trafficMainView.frame.midX - 51.5
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "changeTrafficXib:", name: "changeMiddleView", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "resetTrafficXib:", name: "resetViews", object: nil)
    }
    
    func changeTrafficXib(notification:NSNotification) {
        UIView.animateWithDuration(1) { () -> Void in
            self.trafficMainView.logoRightConstraint.constant = self.midSize
                self.view.layoutIfNeeded()
        }
    }
    func resetTrafficXib(notification:NSNotification) {
        UIView.animateWithDuration(1) { () -> Void in
            self.trafficMainView.logoRightConstraint.constant = 22
            self.view.layoutIfNeeded()
        }
        
    }
    
    
    
    
}

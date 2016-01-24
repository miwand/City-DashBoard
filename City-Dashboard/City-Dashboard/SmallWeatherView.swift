//
//  SmallWeatherView.swift
//  City-Dashboard
//
//  Created by Miwand Najafe on 2016-01-24.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import UIKit

class SmallWeatherView: UIView {
    
    // Our custom view from the XIB file
    var view: UIView!
    
    // Outlets

       
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "smallWeather", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    
    // If you add custom drawing, it'll be behind any view loaded from XIB
    
    
    }
    */
    
}

//import UIKit
//
//@IBDesignable class smallWeatherView: UIView {
//    @IBOutlet weak var Time: UILabel!
//    
//    @IBOutlet weak var city: UILabel!
//    @IBOutlet weak var longDate: UILabel!
//    var view: UIView!
//   
//    @IBOutlet weak var lastUpdate: UILabel!
//    @IBOutlet weak var amPm: UILabel!
//    @IBOutlet weak var tempHighLow: UILabel!
//    @IBOutlet weak var temperature: UILabel!
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        xibSetup()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//       super.init(coder: aDecoder)
//        xibSetup()
//    }
//    
//    //Get xib
//    
//    func xibSetup() {
//        view = loadViewFromNib()
//        
//        view.frame = self.bounds
//        
//        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
//        addSubview(view)
//        
//    }
//    
//    func loadViewFromNib() -> UIView {
//        let bundle = NSBundle(forClass: self.dynamicType)
//        let nib = UINib(nibName: "smallWeather", bundle: bundle)
//        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
//        return view
//    }
//    
//    
//}

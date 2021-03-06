//
//  TrafficTableCell.swift
//  City-Dashboard
//
//  Created by Miwand Najafe on 2016-01-29.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import UIKit

class TrafficTableCell: UITableViewCell {

    @IBOutlet weak var vwTrafficCard: UIView!
    @IBOutlet weak var imgIncidentType: UIImageView!
    @IBOutlet weak var lblTrafficDescription: UILabel!
    @IBOutlet weak var lblDelayTime: UILabel!
    @IBOutlet weak var vwSeverity: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.frame = UIScreen.mainScreen().bounds
        self.autoresizingMask = [UIViewAutoresizing.FlexibleHeight, UIViewAutoresizing.FlexibleWidth]
        
        vwTrafficCard.layer.cornerRadius = 5
        vwTrafficCard.clipsToBounds = true
        circleView()
        colorBySeverity()
        
    }

   
    
    
    
  
    
    private func circleView() {
        vwSeverity.layer.cornerRadius = vwSeverity.bounds.height/2
        vwSeverity.clipsToBounds = true
    }
    
    private func colorBySeverity() {
       vwSeverity.backgroundColor = UIColor.redColor()
    }
    
   
    
    
   
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

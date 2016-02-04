//
//  TrafficTableCell.swift
//  City-Dashboard
//
//  Created by Miwand Najafe on 2016-01-29.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import UIKit

class TrafficTableCell: UITableViewCell {

    @IBOutlet weak var imgIncidentType: UIImageView!
    @IBOutlet weak var lblTrafficDescription: UILabel!
    @IBOutlet weak var lblDelayTime: UILabel!
    @IBOutlet weak var vwSeverity: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        circleView()
    }

   private func circleView() {
        vwSeverity.layer.cornerRadius = vwSeverity.bounds.height/2
        vwSeverity.clipsToBounds = true
    }
    
  private func colorBySeverity() {
        
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  busScheduleTableViewCell.swift
//  BusScheduleUI
//
//  Created by STC on 26/11/22.
//

import UIKit

class busScheduleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var BusView: UIView!
    
    @IBOutlet weak var procceedToBookButton: UIButton!

    
    @IBOutlet weak var seeDirectionButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

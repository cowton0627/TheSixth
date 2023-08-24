//
//  ListTableViewCell.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var leadingLabel: UILabel!
    @IBOutlet weak var trailingLabel: UILabel!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }
    
    // for OriginCell
    func setupCell(with item: ZodiacData) {
        leadingLabel.text = item.name
        trailingLabel.text = item.tillDate
    }
    // for DevCell
    func setupCell(with item: AttendeeData) {
        leadingLabel.text = item.name
        trailingLabel.text = "\(item.age)"
    }

}

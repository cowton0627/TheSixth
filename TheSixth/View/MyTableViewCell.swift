//
//  MyTableViewCell.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var leadingLabel: UILabel!
    @IBOutlet weak var trailingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // for OriginCell
    func setupCell(data: ZodiacData) {
        leadingLabel.text = data.name
        trailingLabel.text = data.tillDate
    }
    // for DevCell
    func setupCell(data: WwdcData) {
        leadingLabel.text = data.name
        trailingLabel.text = "\(data.age)"
    }

}

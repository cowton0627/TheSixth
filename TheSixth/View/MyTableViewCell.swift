//
//  MyTableViewCell.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var zodiac: UILabel!
    @IBOutlet weak var tilDay: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(data: ZodiacData) {
        zodiac.text = data.name
        tilDay.text = data.tillDate
    }
    
    
    

}
